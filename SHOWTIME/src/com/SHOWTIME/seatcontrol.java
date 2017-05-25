package com.SHOWTIME;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class seatcontrol
 */
@WebServlet("/seatcontrol")
public class seatcontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public seatcontrol() {
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
		//doGet(request, response);
		
		String[] seatid = request.getParameterValues("s");
		HttpSession session=request.getSession(true);
		String id= (String) session.getAttribute("id");
		 String hid=(String)session.getAttribute("hid");
		 for(int i=0;i<seatid.length;i++)
		 {
			 new mylogic().seatupdate(id, hid, seatid[i]);
		 }
	               //new mylogic().abcd1234(id, hid, seatid); 
		
	     String name=new mylogic().moviename(id);
	     int amount=0;
	     for (int i = 0; i < seatid.length; i++) {
	          if(seatid[i].equals("1a")||seatid[i].equals("1b")||seatid[i].equals("1c")||seatid[i].equals("1d")||seatid[i].equals("1e")) 
	          {   
	          	  amount+=100;}
	          else
	          {    System.out.println(seatid[i]);
	          System.out.println(seatid.length);
	        	  amount+=200;}
			} String s=String.join(",",seatid);
			
		 session.setAttribute("seatname", s);
	     session.setAttribute("price", amount);
	     session.setAttribute("moviename", name);
	     session.setAttribute("quantity", seatid.length);	    
	     response.sendRedirect("movie-payment.jsp");

	}

}
