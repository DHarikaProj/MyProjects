<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String action = ""; 
///String [] lines = null;%>
<% action = request.getParameter("action");
//lines = request.getParameterValues("coursename");%>
<h3><%= action %> a course</h3>
<form method = "post" action = "coursesopr.jsp?action=<%= action %>" >
<table>
<tr><td>Course Name</td><td><input type="text" name="cname" value= <%=request.getParameter("coursename") %>></td>
<td><input type="hidden" name="cid" value= <%= request.getParameter("courseid")%>></td></tr>
<tr><td>Duration</td><td><input type="text" name="cdur" value= <%= request.getParameter("coursedur")%>></td></tr>
<tr><td>Fee</td><td><input type="text" name="cfee" value= <%= request.getParameter("coursefee")%>></td></tr>
<tr><td></td><td><input type="submit" value="SUBMIT" ></td></tr>
</table></form>
</body>
</html>