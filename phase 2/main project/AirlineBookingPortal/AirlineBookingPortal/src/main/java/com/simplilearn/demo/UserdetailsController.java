package com.simplilearn.demo;

import java.io.IOException;   
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.file.Matcher;

import com.simplilearn.demo.Userdetails;


/**
 * Servlet implementation class ProductController
 */
@WebServlet("/UserdetailsController")
public class UserdetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserdetailsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

			Userdetails u1 = new Userdetails(request.getParameter("pname"), 
			request.getParameter("pgender"), 
			request.getParameter("pnumber"),request.getParameter("pemail"),request.getParameter("page"));
			session.setAttribute("userdetails", u1);
			response.sendRedirect("payment.jsp");
		
	}
	}


