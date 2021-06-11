package controller;
import security.Encript;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import error.MessageError;
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
				String senhaHash = Encript.toSHA256(request.getParameter("senha"));
				
				LoginDao loginDao = new LoginDao();
				UsuarioBean usuario = loginDao.autenticar(email);
				
				
				if(!usuario.getSenha().equals(senhaHash)) {
					throw new Exception("Senha incorreta");
				}			
				
				HttpSession session = request.getSession(); 
		        session.setAttribute("usuario", usuario);  				
		        
				response.getWriter().append("true");
				
		} catch (Exception e) {	
			response.getWriter().append(e.getMessage());
		}		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
}
