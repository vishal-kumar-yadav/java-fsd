package com.simplilearn.demo;

import java.io.IOException;   
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/AdminControllerServlet")
public class LoginServlet extends HttpServlet {
	


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
        PrintWriter out= resp.getWriter();
        
		String email =req.getParameter("email");
        String password =req.getParameter("password");
        
        if(email.equalsIgnoreCase("baljeet@gmail.com") && password.equalsIgnoreCase("12345")) {
            
        	//add  user in the session once the login is done
            HttpSession session=req.getSession();
            
            //setAttribute method is used to store an object in session by allotting a unique 
            //string to the object. Later, By using the same string this object can be 
            //accessed from the session until the session is active.
            session.setAttribute("email", email);
            session.setAttribute("pass", password);
            resp.sendRedirect("routes.jsp");
        }
     
        else {
    		
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.include(req, resp);
			
            out.println("<h2 align=\"center\">Email or Password Error!</h2>");
			out.println("<h2 align=\"center\">Enter valid Email and password<br/><br/></br></h2>");

    		
        }
 
		
	}
	
	

}