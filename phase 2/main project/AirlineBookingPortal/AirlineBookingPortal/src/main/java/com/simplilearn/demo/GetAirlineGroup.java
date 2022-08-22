package com.simplilearn.demo;

import java.io.IOException ;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AvailableFlights")
public class GetAirlineGroup extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		
		String source= req.getParameter("from");
		String destination= req.getParameter("to");
		String date = req.getParameter("datee");
		
		HttpSession session=req.getSession();
		session.setAttribute("fromm", source);
		session.setAttribute("too", destination);
		
		//connecting to database
		Properties props= new Properties();
		InputStream  in= getServletContext().getResourceAsStream("/WEB-INF/application.properties");
		props.load(in);
		Connection  conn=DBConfig.getConnection(props);
		
		if(conn!=null)
		{
			try {
				
				
				PreparedStatement  stmt= conn.prepareStatement("SELECT airline_group FROM routes WHERE From_source=? and To_destination=?" );
				stmt.setString(1, source);
				stmt.setString(2, destination);
				ResultSet rs=stmt.executeQuery();  
				
				String Airline_code = null;
					while(rs.next()) {
						
						Airline_code= rs.getString(1);
						
					}
					
					req.setAttribute("date", date);
					req.setAttribute("aircode", Airline_code);
					
					RequestDispatcher reqd = req.getRequestDispatcher("AvailFlights");
					reqd.forward(req, resp);
					
					
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	

}
