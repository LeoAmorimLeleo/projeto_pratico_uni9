package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UsuarioBean;
import model.UsuarioDao;

/**
 * Servlet implementation class UsrServlet
 */
@WebServlet("/UsrServlet")
public class UsrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsrServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String acao = new request.getParameter("acao");
		if(acao!=null){
			if(acao.equals("autenticar")){
				
			
			try {
				UsuarioBean usuarioBean = new UsuarioBean();
				
				usuarioBean.setEmail(request.getParameter("email"));
				usuarioBean.setSenha(request.getParameter("senha"));
				
				UsuarioDao usuarioDao = new UsuarioDao();
				String resultado = usuarioDao.buscarUsuario(usuarioBean);
				response.getWriter().append(resultado);
			} catch (Exception e) {			
				e.printStackTrace();
				response.getWriter().append("Dados inseridos com sucesso!! " + e.toString());
			}
			 }
			else if(acao.equals("buscar")){
				try {
					UsuarioBean usuarioBean = new UsuarioBean();
					
					usuarioBean.setEmail(request.getParameter("email"));
					usuarioBean.setSenha(request.getParameter("senha"));
					
					UsuarioDao usuarioDao = new UsuarioDao();
					String resultado = usuarioDao.buscarUsuario(usuarioBean);
					response.getWriter().append(resultado);
				} catch (Exception e) {			
					e.printStackTrace();
					response.getWriter().append("Usuario ou senha invalidos! " + e.toString());
		}
			}
			
			
		
		
		
		
		
		UsuarioBean usuarioBean = new UsuarioBean();
		
		usuarioBean.setNome(request.getParameter("nome"));
		usuarioBean.setSobrenome(request.getParameter("sobrenome"));
		usuarioBean.setCelular(request.getParameter("celular"));
		usuarioBean.setEmail(request.getParameter("email"));
		usuarioBean.setSenha(request.getParameter("senha"));
		
		
				
		UsuarioDao usuarioDao = new UsuarioDao();
		try {
			usuarioDao.inserirUsuario(usuarioBean);
			response.getWriter().append("Dados inseridos com sucesso!");
		} catch (Exception e) {			
			e.printStackTrace();
			response.getWriter().append("Ocorreu o seguinte erro: " + e.toString());
		}
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
