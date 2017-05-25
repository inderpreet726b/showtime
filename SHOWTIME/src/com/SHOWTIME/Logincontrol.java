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
 * Servlet implementation class Logincontrol
 */
@WebServlet("/Logincontrol")
public class Logincontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logincontrol() {
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
		String email=request.getParameter("e");
		String password=request.getParameter("p");
		if(email.equals("admin")&&password.equals("admin"))
		{
			response.sendRedirect("admin.jsp");
		}
		else{
		String f=new mylogic().checkUser(email,password);
		System.out.println(f);
		if(!f.equals("na")&&!f.equals("err"))
		{   
			HttpSession session= request.getSession(true);
			session.setAttribute("uname",f);
			session.setAttribute("topemail",email);
		
			String[] images=new String[20];
			for(int i=1;i<7;i++)
			{
				String str=String.valueOf(i);
				images[i]=new mylogic().image1(str);
			}
			//new mylogic().abcd(f);
			session.setAttribute("indeximage1",images[1]);
			session.setAttribute("indeximage2",images[2]);
			session.setAttribute("indeximage3",images[3]);
			session.setAttribute("indeximage4",images[4]);
			session.setAttribute("indeximage5",images[5]);
			session.setAttribute("indeximage6",images[6]);
			for(int i=10;i<16;i++)
			{
				String str=String.valueOf(i);
				images[i]=new mylogic().image1(str);
			}
			session.setAttribute("indeximage10",images[10]);
			session.setAttribute("indeximage11",images[11]);
			session.setAttribute("indeximage12",images[12]);
			session.setAttribute("indeximage13",images[13]);
			session.setAttribute("indeximage14",images[14]);
			session.setAttribute("indeximage15",images[15]);
			
		
			String[] images2=new String[40];
			for(int i=1;i<19;i++)
			{
				String str=String.valueOf(i);
				images2[i]=new mylogic().image2(str);
			}
			session.setAttribute("movieimage1",images2[1]);
			session.setAttribute("movieimage2",images2[2]);
			session.setAttribute("movieimage3",images2[3]);
			session.setAttribute("movieimage4",images2[4]);
			session.setAttribute("movieimage5",images2[5]);
			session.setAttribute("movieimage6",images2[6]);
			session.setAttribute("movieimage7",images2[7]);
			session.setAttribute("movieimage8",images2[8]);
			session.setAttribute("movieimage9",images2[9]);
			session.setAttribute("movieimage10",images2[10]);
			session.setAttribute("movieimage11",images2[11]);
			session.setAttribute("movieimage12",images2[12]);
			session.setAttribute("movieimage13",images2[13]);
			session.setAttribute("movieimage14",images2[14]);
			session.setAttribute("movieimage15",images2[15]);
			session.setAttribute("movieimage16",images2[16]);
			session.setAttribute("movieimage17",images2[17]);
			session.setAttribute("movieimage18",images2[18]);
			String[] mname=new String[20]; 
			for(int i=1;i<19;i++)
			{
				String str=String.valueOf(i);
				mname[i]=new mylogic().mname(str);
			}
			session.setAttribute("mname1",mname[1]);
			session.setAttribute("mname2",mname[2]);
			session.setAttribute("mname3",mname[3]);
			session.setAttribute("mname4",mname[4]);
			session.setAttribute("mname5",mname[5]);
			session.setAttribute("mname6",mname[6]);
			session.setAttribute("mname7",mname[7]);
			session.setAttribute("mname8",mname[8]);
			session.setAttribute("mname9",mname[9]);
			session.setAttribute("mname10",mname[10]);
			session.setAttribute("mname11",mname[11]);
			session.setAttribute("mname12",mname[12]);
			session.setAttribute("mname13",mname[13]);
			session.setAttribute("mname14",mname[14]);
			session.setAttribute("mname15",mname[15]);
			session.setAttribute("mname16",mname[16]);
			session.setAttribute("mname17",mname[17]);
			session.setAttribute("mname18",mname[18]);
			String[] mduration=new String[20]; 
			for(int i=1;i<19;i++)
			{
				String str=String.valueOf(i);
				mduration[i]=new mylogic().mduration(str);
			}
			session.setAttribute("mduration1",mduration[1]);
			session.setAttribute("mduration2",mduration[2]);
			session.setAttribute("mduration3",mduration[3]);
			session.setAttribute("mduration4",mduration[4]);
			session.setAttribute("mduration5",mduration[5]);
			session.setAttribute("mduration6",mduration[6]);
			session.setAttribute("mduration7",mduration[7]);
			session.setAttribute("mduration8",mduration[8]);
			session.setAttribute("mduration9",mduration[9]);
			session.setAttribute("mduration10",mduration[10]);
			session.setAttribute("mduration11",mduration[11]);
			session.setAttribute("mduration12",mduration[12]);
			session.setAttribute("mduration13",mduration[13]);
			session.setAttribute("mduration14",mduration[14]);
			session.setAttribute("mduration15",mduration[15]);
			session.setAttribute("mduration16",mduration[16]);
			session.setAttribute("mduration17",mduration[17]);
			session.setAttribute("mduration18",mduration[18]);
			
			
			String[] mdate=new String[20]; 
			for(int i=1;i<19;i++)
			{
				String str=String.valueOf(i);
				mdate[i]=new mylogic().mdate(str);
			}
			session.setAttribute("mdate1",mdate[1]);
			session.setAttribute("mdate2",mdate[2]);
			session.setAttribute("mdate3",mdate[3]);
			session.setAttribute("mdate4",mdate[4]);
			session.setAttribute("mdate5",mdate[5]);
			session.setAttribute("mdate6",mdate[6]);
			session.setAttribute("mdate7",mdate[7]);
			session.setAttribute("mdate8",mdate[8]);
			session.setAttribute("mdate9",mdate[9]);
			session.setAttribute("mdate10",mdate[10]);
			session.setAttribute("mdate11",mdate[11]);
			session.setAttribute("mdate12",mdate[12]);
			session.setAttribute("mdate13",mdate[13]);
			session.setAttribute("mdate14",mdate[14]);
			session.setAttribute("mdate15",mdate[15]);
			session.setAttribute("mdate16",mdate[16]);
			session.setAttribute("mdate17",mdate[17]);
			session.setAttribute("mdate18",mdate[18]);
			
			response.sendRedirect("index.jsp");
						
			
					
		}else
	    {
			RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
			request.setAttribute("msg", "incorrect id or passord");
			rd.forward(request, response);
			

	    
	    }

	}
	}
}
