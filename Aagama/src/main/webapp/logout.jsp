<%
	session.invalidate();
	response.sendRedirect("index.jsp?msg=YouHaveBeenLoggedOutSuccessfully");
%>