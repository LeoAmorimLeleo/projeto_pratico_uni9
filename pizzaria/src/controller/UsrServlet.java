package controller;
import security.Encript;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UsuarioBean;
import model.UsuarioDao;

@WebServlet("/UsrServlet")
public class UsrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public UsrServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
			UsuarioBean usuarioBean = new UsuarioBean();
			
			usuarioBean.setNome(request.getParameter("nome"));
			usuarioBean.setSobrenome(request.getParameter("sobrenome"));
			usuarioBean.setCelular(request.getParameter("celular"));
			usuarioBean.setEmail(request.getParameter("email"));
			
			String senhaHash =  Encript.toSHA256(request.getParameter("senha"));			
			usuarioBean.setSenha(senhaHash);
					
			UsuarioDao usuarioDao = new UsuarioDao();
			usuarioDao.inserirUsuario(usuarioBean);
			
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
