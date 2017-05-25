package com.SHOWTIME;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class control
 */
@WebServlet("/control")
public class control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public control() {
    	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String id=request.getParameter("id");
		String moviebanner=new mylogic().image3(id);
		System.out.println(moviebanner);
		HttpSession session=request.getSession(true);
		session.setAttribute("moviebanner", moviebanner);
		String name=new mylogic().movie1(id);
		String duration=new mylogic().movie2(id);
		String date=new mylogic().movie3(id);
		String director=new mylogic().movie4(id);
		String actor=new mylogic().movie5(id);
		String type=new mylogic().movie6(id);
		
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		session.setAttribute("duration", duration);
		session.setAttribute("date", date);
		session.setAttribute("director", director);
		session.setAttribute("actor", actor);
		session.setAttribute("type", type);
		String[] st=new String[5];
		st=new mylogic().pvrvp(id);
		session.setAttribute("pvrvp1",st[0]);
		session.setAttribute("pvrvp2",st[1]);
		session.setAttribute("pvrvp3",st[2]);
		session.setAttribute("pvrvp4",st[3]);
		session.setAttribute("pvrvp5",st[4]);
		String[] st1=new String[5];
		st1=new mylogic().wave(id);
		session.setAttribute("wave1",st1[0]);
		session.setAttribute("wave2",st1[1]);
		session.setAttribute("wave3",st1[2]);
		session.setAttribute("wave4",st1[3]);
		session.setAttribute("wave5",st1[4]);
		response.sendRedirect("movie-single.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
