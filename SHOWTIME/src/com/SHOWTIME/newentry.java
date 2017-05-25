package com.SHOWTIME;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newentry
 */
@WebServlet("/newentry")
public class newentry extends HttpServlet {
	int f;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newentry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		if(f==1)
	     {
	    	 RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
	    	 request.setAttribute("m", "registration done");
	    	 rd.forward(request, response);
	     }
	     else
	    	 if(f==2)
	    	 {

		    	 RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
		    	 request.setAttribute("m", "registration failed");
		    	 rd.forward(request, response);
		      
	    	 }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String n=request.getParameter("name");
		String p=request.getParameter("password");
		String e=request.getParameter("email");
		String  m=request.getParameter("mobile");
		user u=new user( e,p,n,m);
		if(new mylogic().addUser(u))
		{f=1;
		doGet(request, response);
	}
		else
		{
			f=2;
			doGet(request, response);
		}

		
	}

}
