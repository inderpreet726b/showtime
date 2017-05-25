<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#21618C">
<form action="forget" method="post"><br><br><br><br>
<h1 style="text-align:center;">Password Resetting</h1><br><br>
<h1 style="text-align:center;">Enter email:<input type="text"  id="e" name="e" placeholder="EMAIL" ></h1><br>
<h1 style="text-align:center;">Enter Password:<input type="password" id="p1" name="p1" ></h1><br>
<h1 style="text-align:center;">Confirm Password:<input type="password" id="p2" name="p2" ></h1><br>
<h1 style="text-align:center;"><input type="submit" value="SUBMIT" name="s"></h1><br>
<h1 style="text-align:center;"><input type="submit" value="CANCEL" name="c"></h1><br>
<%if(request.getAttribute("msg")!=null)
{%>
<h5 align="center"><%=request.getAttribute("msg") %></h5>
<%
}%>



</form>
</body>
</html>