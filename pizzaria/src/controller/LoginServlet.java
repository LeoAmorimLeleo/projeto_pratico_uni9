package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import model.LoginDao;
import model.UsuarioBean;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       

    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		try {
				String email = request.getParameter("email");
				String senha = request.getParameter("senha");
				
				LoginDao loginDao = new LoginDao();
				UsuarioBean usuario = loginDao.autenticar(email, senha);
				
				HttpSession session = request.getSession(); 
		        session.setAttribute("usuario", usuario);  
				
		        String isAutenticado = "false";
		        if(usuario.getId() > 0) { isAutenticado = "true"; }
		        
				response.getWriter().append(isAutenticado);
				
		} catch (Exception e) {			
			e.printStackTrace();
			response.getWriter().append("Ocorreu o seguinte erro: " + e.toString());
		}		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
}
