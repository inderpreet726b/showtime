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
 * Servlet implementation class forget
 */
@WebServlet("/forget")
public class forget extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forget() {
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
		String submit=request.getParameter("s");
		String cancel=request.getParameter("c");
		
		if(cancel != null)
		{
		response.sendRedirect("login.jsp");
		}
		else
			if(submit != null)
		{
			String email=request.getParameter("e");
			String password1=request.getParameter("p1");
			String password2=request.getParameter("p2");
			if(!(password1.equals(password2)))
			{
				RequestDispatcher rd=request.getRequestDispatcher("/forgot.jsp");
				request.setAttribute("msg", "password does not matches");
				rd.forward(request, response);
			}else
			{
			String f=new mylogic().checkUser2(email);
			if(!f.equals("na")&&!f.equals("err"))
			{   HttpSession session= request.getSession(true);
				session.setAttribute("email1",f);
				//response.sendRedirect("index.html");
				new mylogic().update1(email,password1);
				RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
				request.setAttribute("ms", "Updation done");
				rd.forward(request, response);
				
						
			}else
		    {   RequestDispatcher rd=request.getRequestDispatcher("/forgot.jsp");
				request.setAttribute("msg", "incorrect email");
				rd.forward(request, response);
				

		    
		    }
			}

		}
	}

}
