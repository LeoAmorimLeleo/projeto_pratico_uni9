package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EnderecoBean;
import model.EnderecoDao;
import model.UsuarioBean;

@WebServlet("/EnderecoServlet")
public class EnderecoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       
  
    public EnderecoServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		EnderecoBean enderecoBean = new EnderecoBean();
		

		HttpSession session = request.getSession(); 
		UsuarioBean usuario = (UsuarioBean)session.getAttribute("usuario");
		
		enderecoBean.setId_cliente(usuario.getId());
		enderecoBean.setBairro(request.getParameter("bairro"));
		enderecoBean.setRua(request.getParameter("rua"));
		enderecoBean.setNumero(request.getParameter("numero"));
		enderecoBean.setComplemento(request.getParameter("complemento"));
		enderecoBean.setCep(request.getParameter("cep"));
		enderecoBean.setCidade(request.getParameter("cidade"));
		enderecoBean.setEstado(request.getParameter("estado"));
		
		EnderecoDao enderedoDao = new EnderecoDao();
		
		try {
			enderedoDao.inserir(enderecoBean);
			response.getWriter().append("true");
		} catch (Exception e) {			
			e.printStackTrace();
			response.getWriter().append("Ocorreu o seguinte erro: " + e.toString());
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
