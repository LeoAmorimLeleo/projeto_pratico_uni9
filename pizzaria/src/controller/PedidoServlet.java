package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PedidoServlet")
public class PedidoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       

    public PedidoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try	{
			
			String [] teste = request.getParameterValues("products");	
			response.getWriter().append("wdd");
		} catch (Exception e) {			
		e.printStackTrace();
		response.getWriter().append("Ocorreu o seguinte erro: " + e.toString());
		}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
