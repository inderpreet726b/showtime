package com.SHOWTIME;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;




/**
 * Servlet implementation class paymentcontrol
 */
@WebServlet("/paymentcontrol")
public class paymentcontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paymentcontrol() {
        super();
        // TODO Auto-generated constructor stub
    } 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		HttpSession session=request.getSession(true);
		String cardno=request.getParameter("cardno");
		String expiry=request.getParameter("expiry");
		String name=request.getParameter("name");
		String year=request.getParameter("year");
		String cvv=request.getParameter("cvv");
		System.out.println(cardno+expiry+name+year+cvv);
		if(session.getAttribute("msg100").equals("proceed with the payment details"))
		{	
		String s=new mylogic().payment(cardno,name,expiry,year,cvv);
		if(!s.equals("na")&&!s.equals("err"))
		{ String to = (String) session.getAttribute("lastemail");//change accordingly
	      String sub="Ticket Booking";
	      String m1=(String) session.getAttribute("seatname");
	      String m2=(String) session.getAttribute("moviename");
	      String m3=(String) session.getAttribute("cn");
	      String m4=(String) session.getAttribute("cl");
	      String m5=(String) session.getAttribute("d");
	      String m6=(String) session.getAttribute("time");
 	      
	      String msg="Your Ticket Information"
	      		+ "Movie Name:"+m2+
	      		"Seat Info:"+m1+
	      		"Cinema Name:"+m3+
	      		"Cinema Location:"+m4+
	      		"Date:"+m5+
	      		"Time:"+m6
	      		;
	      String from = "showtimeshowtime123@gmail.com";
	      final String username = "showtimeshowtime123@gmail.com";
	      final String password = "Showtime0-";
	      String host = "smtp.gmail.com";

	      Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "587");

	      // Get the Session object.
	      Session ses = Session.getInstance(props,
	      new javax.mail.Authenticator() {
	         protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, password);
	         }
	      });

	      try {
	         
	         Message message = new MimeMessage(ses);
	         message.setFrom(new InternetAddress(from));
	         message.setRecipients(Message.RecipientType.TO,
	         InternetAddress.parse(to));
	         message.setSubject(sub);
	         message.setText(msg);
	         Transport.send(message);
	         
	         
	      } catch (MessagingException e) {
	    	  e.printStackTrace();
	    	  
	      }

	      
	      
	      
		String confirm="Check Your Email";
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
		request.setAttribute("confirm", confirm);
		rd.forward(request, response);
			//response.sendRedirect("index.jsp");
		}
		else
		{
			session.setAttribute("msg500", "incorrect card details enter again");
			response.sendRedirect("movie-payment.jsp");
		}
		}
		else
		{
			session.setAttribute("msg1000", "Enter the Email and contact details first");
		}
	}

}
