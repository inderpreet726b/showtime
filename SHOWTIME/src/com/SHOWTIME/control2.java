package com.SHOWTIME;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class control2
 */
@WebServlet("/control2")
public class control2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public control2() {
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
		String hid=request.getParameter("hid");
		String cid=request.getParameter("cid");
		String date=request.getParameter("date");
		String[] st=new String[10];
		st=new mylogic().seat(id, hid);
		HttpSession session=request.getSession(true);
		session.setAttribute("hid", hid);
		session.setAttribute("id", id);
		session.setAttribute("1a", st[0]);
		session.setAttribute("1b", st[1]);
		session.setAttribute("1c", st[2]);
		session.setAttribute("1d", st[3]);
		session.setAttribute("1e", st[4]);
		session.setAttribute("2a", st[5]);
		session.setAttribute("2b", st[6]);
		session.setAttribute("2c", st[7]);
		session.setAttribute("2d", st[8]);
		session.setAttribute("2e", st[9]);
		String time=request.getParameter("time");
		session.setAttribute("time", time);
		String[] c=new String[2];
		c=new mylogic().cinemainfo(cid);
		session.setAttribute("cn", c[0]);
		session.setAttribute("cl", c[1]);
		String d=new mylogic().date(date);
		session.setAttribute("d", d);
		response.sendRedirect("seats.jsp");
		
		 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
