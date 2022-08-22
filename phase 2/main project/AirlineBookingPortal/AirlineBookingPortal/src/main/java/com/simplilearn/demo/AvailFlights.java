package com.simplilearn.demo;

import java.io.IOException ; 
import java.io.InputStream;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AvailFlights")
public class AvailFlights extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		
		//connecting to database
		Properties props= new Properties();
		InputStream  in= getServletContext().getResourceAsStream("/WEB-INF/application.properties");
		props.load(in);
		Connection  conn=DBConfig.getConnection(props);
		String Airline = (String) req.getAttribute("aircode");
		String date = (String) req.getAttribute("date");
		
		if(conn!=null)
		{
			try {
				PreparedStatement  stmt= conn.prepareStatement("SELECT * FROM "+Airline+"");
				ResultSet rs=stmt.executeQuery();  
				List<String[]> flights=new ArrayList<>();
				
					while(rs.next()) 
					{
						String[] flight=new String[5];
						flight[0]=rs.getString("Airline_name");
						flight[1]=rs.getString("Price");
						flight[2]=rs.getString("Start_time");
						flight[3]=rs.getString("End_time");
						flights.add(flight);
					}
					
					
					HttpSession session=req.getSession();
					
					session.setAttribute("date", date);
					session.setAttribute("flights", flights);
					
					
					req.getRequestDispatcher("FlightList.jsp").forward(req, resp);
					

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
