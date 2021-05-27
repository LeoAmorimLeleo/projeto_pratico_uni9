package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PedidoBean;
import model.UsuarioBean;
import model.UsuarioDao;

@WebServlet("/PedidoServlet")
public class PedidoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       
  
    public PedidoServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PedidoBean PedidoBean = new PedidoBean();
		
		PedidoBean.setBairro(request.getParameter("bairro"));
		PedidoBean.setRua(request.getParameter("rua"));
		PedidoBean.setNumero(request.getParameter("numero"));
		PedidoBean.setComplemento(request.getParameter("complemento"));
		PedidoBean.setCep(Integer.parseInt(request.getParameter("cep")));
		PedidoBean.setCidade(request.getParameter("cidade"));
		PedidoBean.setEstado(request.getParameter("estado"));
		
		UsuarioDao usuarioDao = new UsuarioDao();
		
		try {
			usuarioDao.inserirUsuario(usuarioBean);
			response.getWriter().append("Dados inseridos com sucesso!");
		} catch (Exception e) {			
			e.printStackTrace();
			response.getWriter().append("Ocorreu o seguinte erro: " + e.toString());
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
