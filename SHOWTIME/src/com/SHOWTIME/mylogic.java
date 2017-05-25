package com.SHOWTIME;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.spi.DirStateFactory.Result;




public class mylogic {
     public String id;
     public String hid;
     public String[] ab=new String[100];
	Connection connect()
	{ try
	{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("driver loaded .....");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/showtime","root","Inderpreet0-");
		System.out.println("database connected");
		return con;
	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println("error at connection method"+e.getMessage());
		return null;
	}

	}
	String checkUser(String email, String password)
	{
		try
		{    Connection con=connect();
			String q="Select * from login where email=? and password=?";
		    PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1,email);
			pst.setString(2,password);
		    
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				
				return rs.getString("name");
				
			}
			else{
				
								return "na";
								
			}
			
		}
		catch(Exception e)
		{ 
			e.printStackTrace();
			System.out.println("error at checkuser:"+e.getMessage());
			return "err";
		}

	}
	String checkUser100(String email, String mobile)
	{
		try
		{    Connection con=connect();
			String q="Select * from login where email=? and mobile=?";
		    PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1,email);
			pst.setString(2,mobile);
		    
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				
				return rs.getString("email");
				
			}
			else{
				
								return "na";
								
			}
			
		}
		catch(Exception e)
		{ 
			e.printStackTrace();
			System.out.println("error at checkuser:"+e.getMessage());
			return "err";
		}

	}
	void abcd1234(String i,String h , String[] a)
	{ 
	   
		id=i;
	hid=h;
	for(int ij=0;ij<a.length;ij++)
	{
	ab[ij]=a[ij];}
	
	}
	void abcd12345()
	{
		for (int i = 0; i < ab.length; i++) {
			System.out.println(ab[i]);
        new mylogic().seatupdate(id, hid,ab[i]); 
		}
	}
	String payment(String cardno,String name,String expiry,String year,String cvv)
	{
		try
		{    Connection con=connect();
			String q="Select * from payment where cardno=? and name=?and expiry=?and year=?and cvv=?";
		    PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1,cardno);
			pst.setString(2,name);
			pst.setString(3,expiry);
			pst.setString(4,year);
			pst.setString(5,cvv);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				
				return rs.getString("name");
				
			}
			else{
				
								return "na";
								
			}
			
		}
		catch(Exception e)
		{ 
			e.printStackTrace();
			System.out.println("error at checkuser:"+e.getMessage());
			return "err";
		}

	}


	public Vector<user> getALLUser()
	{
		try
		{ Vector<user> d= new Vector<user>();
			Connection con=connect();
		String q="select * from login";
		PreparedStatement pst=con.prepareStatement(q);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			//String id=rs.getString("id");
			String name=rs.getString("name");
			String password=rs.getString("password");
			String email=rs.getString("email");
			String mobile=rs.getString("mobile");
			
			
		user u= new user(email,password,name,mobile);
		    d .add(u);
		}con.close();
		return d;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
	}
	public Vector<movie> getalldata()
	{
		try
		{ Vector<movie> d= new Vector<movie>();
			Connection con=connect();
		String q="select * from movie";
		PreparedStatement pst=con.prepareStatement(q);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			String id=rs.getString("id");
			String name=rs.getString("name");
			String duration=rs.getString("duration");
			String date=rs.getString("date");
			String director=rs.getString("director");
			String actor=rs.getString("actor");
			String type=rs.getString("type");
			String image1=rs.getString("image1");
			String image2=rs.getString("image2");
			String image3=rs.getString("image3");
			
			
		movie m= new movie(id, name, duration, date, director, actor, type, image1, image2, image3);
		    d .add(m);
		}con.close();
		return d;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
	}
	public void updatemovie(movie m)
	{
		try{
			Connection con=connect();
			String q="update movie set name=?, duration=?,date=?,director=?,actor=?,type=?,image1=?,image2=?,image3=? where id=?";
			PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1,m.getName());
			pst.setString(2,m.getDuration());
			pst.setString(3,m.getDate());
			pst.setString(4,m.getDirector());
			pst.setString(5,m.getActor());
			pst.setString(6,m.getType());
			pst.setString(7,m.getImage1());
			pst.setString(8,m.getImage2());
			pst.setString(9,m.getImage3());
			pst.setString(10, m.getId());
			pst.executeUpdate();
			
		}
		catch(Exception e)
		{e.printStackTrace();}
	}

	public boolean addUser(user u)
	{
		try
		{
			Connection con=connect();
			String query="insert into login(email,password,name,mobile) values(?,?,?,?)";
			
		    PreparedStatement pst=con.prepareStatement(query);
		    
		    pst.setString(1, u.getemail());
		    
		    pst.setString(2, u.getName());
		    pst.setString(3, u.getPassword());
		    pst.setString(4, u.getMobile());
			pst.executeUpdate();
			return true;
		}
		catch(Exception e)
		{ 
			e.printStackTrace();
			return false;
		}
		

	}
	String checkUser2(String email)
	{
		try
		{   Connection con=connect();
			String q="Select * from login where email=? ";
		    PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1,email);
			
		    
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				
				return rs.getString("name").toUpperCase();
				
			}
			else{
				
				
				return "na";
								
			}
			
		}
		catch(Exception e)
		{ 
			e.printStackTrace();
			System.out.println("error at checkuser:"+e.getMessage());
			return "err";
		}

	} 
     void update1(String email, String password)
	{ 
		try{
			Connection con=connect();
			String q="update login set password=? where email=?";
			PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1,password);
			pst.setString(2,email);
			pst.executeUpdate();

		}
		catch(Exception e)
		{ 			e.printStackTrace();
		
	 }
	}
     void abcd(String email)
     {
    	 try{ String status="l";
 			Connection con=connect();
 			String q="update login set status=? where email=?";
 			PreparedStatement pst=con.prepareStatement(q);
 			pst.setString(1,status);
 			pst.setString(2,email);
 		    pst.executeUpdate();

 		}
 		catch(Exception e)
 		{ 			e.printStackTrace();
 		
 	 }
 	 
     }
     void efgh()
     {
    	 try{
    		 String s1="nl";
    		 String s2="l";
    		 Connection con=connect();
    		 String q="select * from login where status=?";
    		 PreparedStatement pst=con.prepareStatement(q);
  			 pst.setString(1,s2);
  			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				
				String q2= rs.getString("email");
				String q3="update login set status=? where email=?";
				PreparedStatement pst2=con.prepareStatement(q3);
	  			 pst2.setString(1,s1);				
	  			 pst2.setString(2,q2);
	  			 pst2.executeUpdate();
				
			}

    	 }
    	 catch(Exception e){
    		 e.printStackTrace();
    	 }
     } 
     String myprofile1(String email)
     {
    	 try
    	 { 
    		Connection con=connect();
    		String q="Select * from login where email=?";
    		PreparedStatement pst=con.prepareStatement(q);
    		pst.setString(1, email);
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    			return rs.getString("name");
    		}else{
    			return "awdad";
    		}
    				
    		 
    	 }
    	 catch(Exception e)
    	 {
    		 e.printStackTrace();
    		 return "abcd";
    	 }
    	 
     }
     String myprofile2(String email)
     {//String status="l";
    	 try
    	 { 
    		Connection con=connect();
    		String q="Select * from login where email=?";
    		PreparedStatement pst=con.prepareStatement(q);
    		pst.setString(1, email);
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    			return rs.getString("password");
    		}else{
    			return "awdad";
    		}
    				
    		 
    	 }
    	 catch(Exception e)
    	 {
    		 e.printStackTrace();
    		 return "abcd";
    	 }
    	 
     }
     String myprofile3(String email)
     {//String status="l";
    	 try
    	 { 
    		Connection con=connect();
    		String q="Select * from login where email=?";
    		PreparedStatement pst=con.prepareStatement(q);
    		pst.setString(1, email);
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    			return rs.getString("mobile");
    		}else{
    			return "awdad";
    		}
    				
    		 
    	 }
    	 catch(Exception e)
    	 {
    		 e.printStackTrace();
    		 return "abcd";
    	 }
    	 
     }

     String myprofile4()
     {   String status="l";
    	 try
    	 { 
    		Connection con=connect();
    		String q="Select * from login where status=?";
    		PreparedStatement pst=con.prepareStatement(q);
    		pst.setString(1, status);
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    			return rs.getString("password");
    		}else{
    			return "awdad";
    		}
    				
    		 
    	 }
    	 catch(Exception e)
    	 {
    		 e.printStackTrace();
    		 return "abcd";
    	 }
    	 
     }
     String updateinfo(String email,String password,String name,String mobile)
     {
    	 try{
    		 Connection con=connect();
    		 String q="update login set name=?,password=?,mobile=? where email=?";
    		 PreparedStatement pst=con.prepareStatement(q);
    		 pst.setString(1, name);
    		 pst.setString(2, password);
    		 pst.setString(3, mobile);
    		 pst.setString(4, email);
    		 pst.executeUpdate();
    		 return "abcd";
    	 }
    	 catch(Exception e)
    	 {  
    		 e.printStackTrace();
    		 return "efgh";
    	 }
     }
    String movie1(String id)
    {
    	try
   	 { 
   		Connection con=connect();
   		String q="Select * from movie where id=?";
   		PreparedStatement pst=con.prepareStatement(q);
   		pst.setString(1, id);
   		ResultSet rs=pst.executeQuery();
   		if(rs.next())
   		{
   			return rs.getString("name");
   		}else{
   			return "awdad";
   		}
   				
   		 
   	 }
   	 catch(Exception e)
   	 {
   		 e.printStackTrace();
   		 return "abcd";
   	 }
   	
    }

    String movie2(String id)
    {
    	try
   	 { 
   		Connection con=connect();
   		String q="Select * from movie where id=?";
   		PreparedStatement pst=con.prepareStatement(q);
   		pst.setString(1, id);
   		ResultSet rs=pst.executeQuery();
   		if(rs.next())
   		{
   			return rs.getString("duration");
   		}else{
   			return "awdad";
   		}
   				
   		 
   	 }
   	 catch(Exception e)
   	 {
   		 e.printStackTrace();
   		 return "abcd";
   	 }
   	
    }

    String movie3(String id)
    {
    	try
   	 { 
   		Connection con=connect();
   		String q="Select * from movie where id=?";
   		PreparedStatement pst=con.prepareStatement(q);
   		pst.setString(1, id);
   		ResultSet rs=pst.executeQuery();
   		if(rs.next())
   		{
   			return rs.getString("date");
   		}else{
   			return "awdad";
   		}
   				
   		 
   	 }
   	 catch(Exception e)
   	 {
   		 e.printStackTrace();
   		 return "abcd";
   	 }
   	
    }
    String movie4(String id)
    {
    	try
   	 { 
   		Connection con=connect();
   		String q="Select * from movie where id=?";
   		PreparedStatement pst=con.prepareStatement(q);
   		pst.setString(1, id);
   		ResultSet rs=pst.executeQuery();
   		if(rs.next())
   		{
   			return rs.getString("director");
   		}else{
   			return "awdad";
   		}
   				
   		 
   	 }
   	 catch(Exception e)
   	 {
   		 e.printStackTrace();
   		 return "abcd";
   	 }
   	
    }
    String movie5(String id)
    {
    	try
   	 { 
   		Connection con=connect();
   		String q="Select * from movie where id=?";
   		PreparedStatement pst=con.prepareStatement(q);
   		pst.setString(1, id);
   		ResultSet rs=pst.executeQuery();
   		if(rs.next())
   		{
   			return rs.getString("actor");
   		}else{
   			return "awdad";
   		}
   				
   		 
   	 }
   	 catch(Exception e)
   	 {
   		 e.printStackTrace();
   		 return "abcd";
   	 }
   	
    }
    String movie6(String id)
    {
    	try
   	 { 
   		Connection con=connect();
   		String q="Select * from movie where id=?";
   		PreparedStatement pst=con.prepareStatement(q);
   		pst.setString(1, id);
   		ResultSet rs=pst.executeQuery();
   		if(rs.next())
   		{
   			return rs.getString("type");
   		}else{
   			return "awdad";
   		}
   				
   		 
   	 }
   	 catch(Exception e)
   	 {
   		 e.printStackTrace();
   		 return "abcd";
   	 }
   	
    }
    String[] pvrvp(String id)
    {
    	try
    	{    String[] st= new String[5];
    		Connection con=connect();
    		String q="select * from pvrvp where mid=?";
    		PreparedStatement pst=con.prepareStatement(q);
    		pst.setString(1, id);
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    			st[0]=rs.getString("st1");
    			st[1]=rs.getString("st2");
    			st[2]=rs.getString("st3");
    			st[3]=rs.getString("st4");
    			st[4]=rs.getString("st5");
    			return st;
    		}
    		else
    		{
    			 return new String[] { "a", "b", "c" };

    		}
    		
    		
    	}
    	catch(Exception e)
    	{e.printStackTrace();}
    	 return new String[] { "a", "b", "c" };

    	
    }
    String[] wave(String id)
    {
    	try
    	{    String[] st= new String[5];
    		Connection con=connect();
    		String q="select * from wave where mid=?";
    		PreparedStatement pst=con.prepareStatement(q);
    		pst.setString(1, id);
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    			st[0]=rs.getString("st1");
    			st[1]=rs.getString("st2");
    			st[2]=rs.getString("st3");
    			st[3]=rs.getString("st4");
    			st[4]=rs.getString("st5");
    			return st;
    		}
    		else
    		{
    			 return new String[] { "a", "b", "c" };

    		}
    		
    		
    	}
    	catch(Exception e)
    	{e.printStackTrace();}
    	 return new String[] { "a", "b", "c" };

    	
    }
    String[] seat(String id,String hid) 
    {
    	try{ String[] st=new String[10];
    		Connection con=connect();
    		String q="select * from seat where id=? and hid=?";
    		PreparedStatement pst=con.prepareStatement(q);
    		pst.setString(1, id);
    		pst.setString(2, hid);
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    		st[0]=rs.getString("1a");
    		st[1]=rs.getString("1b");
    		st[2]=rs.getString("1c");
    		st[3]=rs.getString("1d");
    		st[4]=rs.getString("1e");
    		st[5]=rs.getString("2a");
    		st[6]=rs.getString("2b");
    		st[7]=rs.getString("2c");
    		st[8]=rs.getString("2d");
    		st[9]=rs.getString("2e");
    		return st;
    		
    		}
    		else{return new String[] { "a", "b", "c" };}
    			
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    		return new String[] { "a", "b", "c" };
    	}
    }
       void seatupdate(String id,String hid,String seat)
       {  String s="b";
       System.out.println(seat);
    	   try{
    		     
    		   Connection con=connect();
    		   String q="update seat set "+seat+"=? where id=? and hid=?";
    		   PreparedStatement pst=con.prepareStatement(q);
    		   pst.setString(1, s);
    		   
    		   pst.setString(2, id);
    		   pst.setString(3, hid);
    		   pst.executeUpdate();
    		  // System.out.println("adadadada");
    	   }
    	   catch(Exception e)
    	   { //System.out.println("oppopoopopo");
    		   e.printStackTrace();}
       }
           String moviename(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from movie where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1, id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("name");
        		   }
        		   else
        		   {return "abcd";}
        		   
        	   }
        	   catch(Exception e)
        	   {
        		   e.printStackTrace();
        		   return "bacd";
        	   }
           }
           String[] cinemainfo(String cid)
           {   String[] cinema=new String[2];
        	   try{
        		   Connection con=connect();
        		   String q="select * from cinemainfo where cid=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1, cid);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   cinema[0]=rs.getString("name");
        			   cinema[1]=rs.getString("location");
        			   return cinema;
        		   }
        		   else
        		   {
        			   return cinema;
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return cinema;
        	   }
        	   
        	   
           }
           void seatupdate()
           {   String a="nb";
           String id="1";
           String hid="1";
         	   try{
        		   Connection con=connect();
        		   String q="update seat set 1a=? where id=? and hid=? ";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,a);
        		   pst.setString(2,id);
        		   pst.setString(3,hid);
        		  pst.executeUpdate();
        		   System.out.println("adadada");
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   System.out.println("ssgsgs");
        		   
        	   }
        	   
        	   
           }
           String date(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from date where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("name");
        		   }
        		   else
        		   {
        			   return "daadad";
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return "daadad";
        		   
        	   }
           }
           String image1(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from movie where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("image1");
        		   }
        		   else
        		   {
        			   return "daadad";
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return "daadad";
        		   
        	   }
           }
           String image2(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from movie where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("image2");
        		   }
        		   else
        		   {
        			   return "daadad";
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return "daadad";
        		   
        	   }
           }
           String mduration(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from movie where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("duration");
        		   }
        		   else
        		   {
        			   return "daadad";
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return "daadad";
        		   
        	   }
           }String mdate(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from movie where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("date");
        		   }
        		   else
        		   {
        			   return "daadad";
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return "daadad";
        		   
        	   }
           }
           String mname(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from movie where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("name");
        		   }
        		   else
        		   {
        			   return "daadad";
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return "daadad";
        		   
        	   }
           }
           String image3(String id)
           {
        	   try{
        		   Connection con=connect();
        		   String q="select * from movie where id=?";
        		   PreparedStatement pst=con.prepareStatement(q);
        		   pst.setString(1,id);
        		   ResultSet rs=pst.executeQuery();
        		   if(rs.next())
        		   {
        			   return rs.getString("image3");
        		   }
        		   else
        		   {
        			   return "daadad";
        		   }
        		   
        	   }
        	   catch(Exception e){
        		   e.printStackTrace();
        		   return "daadad";
        		   
        	   }
           }
        
           
                         
	public  static void main(String args[]){
	mylogic m=new mylogic();
	m.connect();
	m.seatupdate();
	}

}
