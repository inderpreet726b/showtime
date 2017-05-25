package com.SHOWTIME;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class paymentcontrol1
 */
@WebServlet("/paymentcontrol1")
public class paymentcontrol1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paymentcontrol1() {
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
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String s=new mylogic().checkUser100(email, mobile);
		if(!s.equals("na")&&!s.equals("err"))
		{
			HttpSession session=request.getSession(true);
			session.setAttribute("msg100", "proceed with the payment details");
			session.setAttribute("lastemail",email);
		}
		else
		{
			HttpSession session=request.getSession(true);
			session.setAttribute("msg100", "Incorrect email or mobile no");
		
		}
		response.sendRedirect("movie-payment.jsp");
	}

}
