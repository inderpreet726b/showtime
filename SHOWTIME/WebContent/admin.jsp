<%@page import="java.util.Vector"%>
<%@page import="com.SHOWTIME.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    background-color: #ECF0F1 ;
    color: #5D6D7E;
}
th, td {
    padding: 5px;
    text-align: left;
}
</style>
</head>
<body bgcolor="#21618C">
	<h1>Admin Page</h1>
	<h2>all movie information</h2>
	<table border="1">
	<tr>
	<td>ID</td>
	<td>Name</td>
	<td>Duration</td>
	<td>Date</td>
	<td>Director</td>
	<td>Actor</td>
	<td>Type</td>
	<td>Image1</td>
	<td>Image2</td>
	<td>Image3</td>
	<td>update</td>
	</tr>	
		<%Vector<movie> data=new mylogic().getalldata();
		
	 for(movie m:data)
	 {%>
	 
	<tr>
	<td><%=m.getId() %></td>
	<td><%=m.getName() %></td>
	<td><%=m.getDuration() %></td>
	<td><%=m.getDate() %></td>
	<td><%=m.getDirector() %></td>
	<td><%=m.getActor() %></td>
	<td><%=m.getType() %></td>
	<td><%=m.getImage1() %></td>
	<td><%=m.getImage2() %></td>
	<td><%=m.getImage3() %></td>
	<td><a href="updateInfo.jsp?id=<%=m.getId() %>&name=<%=m.getName()%>&duration=<%=m.getDuration()%>&date=<%=m.getDate()%>&director=<%=m.getDirector()%>&actor=<%=m.getActor()%>&type=<%=m.getType()%>&image1=<%=m.getImage1()%>&image2=<%=m.getImage2()%>&image3=<%=m.getImage3()%>">update</a></td>
	</tr>	
	 
	 
	 
	 <%
	 }%>
   </table>
<h2 align="center" color><a href="login.jsp">logout</a></h2>
</body>
</html>