<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String name = (String)session.getAttribute("username");
    %>
<!DOCTYPE HTML>
<html>
<head> 
	<title>Registration result</title> 
</head> 
<body> 
	<h1>Registration result</h1>
	<p>
		Thank Mr/Ms <b><%=name%></b> for your interest in our services! <br><br>
		The e-ticket confirmation will be sent in a separate email to the address indicated below: <br><br>
		<b><%=email%></b>
</p>
<%
session.removeAttribute("username");
session.removeAttribute("passwod");
session.invalidate();

%>

</body>
</html>