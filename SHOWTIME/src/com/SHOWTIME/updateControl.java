package com.SHOWTIME;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateControl
 */
@WebServlet("/updateControl")
public class updateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String name= request.getParameter("name");
		String duration= request.getParameter("duration");
		String date= request.getParameter("date");
		String id= request.getParameter("id");
		String director= request.getParameter("director");
		String actor= request.getParameter("actor");
		String type= request.getParameter("type");
		String image1= request.getParameter("image1");
		String image2= request.getParameter("image2");
		String image3= request.getParameter("image3");
		System.out.println(name+" "+duration+" "+date+" "+id+" "+director+""+type+""+image1+""+image2+""+image3);
		movie m=new movie(id, name, duration, date, director, actor, type, image1, image2, image3);
		new mylogic().updatemovie(m);
		response.sendRedirect("admin.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
