<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#21618C" >
<h1>update information for Movie Id <%=request.getParameter("id") %></h1><br>
<h4><a href="admin.jsp">cancel</a><br></h4>

<h1 align="center">enter updated information</h1>
<form  action="updateControl" method="get"><br>
<input type="hidden" name="id" value="<%=request.getParameter("id") %>"><br><br>
<h4 align="center"> enter updated name &nbsp;	&nbsp;	&nbsp;	&nbsp;	<input align="middle" type="text" name="name" value="<%=request.getParameter("name") %>"><br><br></h4>
<h4 align="center"> enter updated duration &nbsp;		&nbsp;	<input type="text" name="duration" value="<%=request.getParameter("duration") %>"><br><br></h4>
<h4 align="center"> enter updated date &nbsp;&nbsp;	&nbsp;	&nbsp;		&nbsp;	&nbsp;	<input type="text" name="date" value="<%=request.getParameter("date") %>"><br><br></h4>
<h4 align="center"> enter updated director&nbsp;	&nbsp;	&nbsp;	<input type="text" name="director" value="<%=request.getParameter("director") %>"><br><br></h4>
<h4 align="center"> enter updated actor &nbsp;	&nbsp;	&nbsp;	&nbsp;	<input type="text" name="actor" value="<%=request.getParameter("actor") %>"><br><br></h4>
<h4 align="center">enter updated type   &nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	<input type="text" name="type" value="<%=request.getParameter("type") %>"><br><br></h4>
<h4 align="center">enter updated image1 &nbsp;	&nbsp;	&nbsp;	<input type="text" name="image1" value="<%=request.getParameter("image1") %>"><br><br></h4>
<h4 align="center">enter updated image2 &nbsp;	&nbsp;	&nbsp;	<input type="text" name="image2" value="<%=request.getParameter("image2") %>"><br><br></h4>
<h4 align="center">enter updated image3 &nbsp;	&nbsp;	&nbsp;	<input type="text" name="image3" value="<%=request.getParameter("image3") %>"><br><br></h4>
<h4 align="center"><input type="submit" value="update info"><br><br></h4>
</form>


</body>
</html>