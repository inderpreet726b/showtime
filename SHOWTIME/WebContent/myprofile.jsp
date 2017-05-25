<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="myprofile2" method="post">
<h1>MY PROFILE</h1>
welcome<%=session.getAttribute("email") %>
NAME:<input type="text" name="n"  id="n" value="<%=session.getAttribute("name") %>">
Password:<input type="text" name="p" id="p" value="<%=session.getAttribute("password")%> ">
MOBILE:<input type="text" name="m" id="m" value="<%=session.getAttribute("mobile")%>">
<input type="submit" value="update" name="update">
<a href="index.jsp">cancel</a>
<%if(request.getAttribute("up")!=null)
{%>
<h2 align="center"><%=request.getAttribute("up") %></h2>
<%
}
%>
</form>
</body>
</html>