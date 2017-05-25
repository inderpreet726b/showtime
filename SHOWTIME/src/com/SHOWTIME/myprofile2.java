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
 * Servlet implementation class myprofile2
 */
@WebServlet("/myprofile2")
public class myprofile2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myprofile2() {
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
		HttpSession session=request.getSession(true);
		String name= request.getParameter("n");
		String email= (String) session.getAttribute("email");
		String password= request.getParameter("p");
		String mobile= request.getParameter("m");
		String f=new mylogic().updateinfo(email, password, name, mobile);
		System.out.println(name+""+email+""+password+""+mobile+""+f);
		if(f!="efgh")
		{
			request.setAttribute("up", "updation done press back");
			RequestDispatcher rd=request.getRequestDispatcher("/myprofile.jsp");
			rd.forward(request, response);
		}
		else
		{     RequestDispatcher rd=request.getRequestDispatcher("/myprofile.jsp");
		      rd.forward(request, response);

			request.setAttribute("up", "updation failed");
			
		}
	}

}
