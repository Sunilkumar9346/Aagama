<%@page import="mts.dto.UserRegistered"%>
<%@page import="mts.dto.Event"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mts.dao.DAOService"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<jsp:include page="AdminMenu.jsp"></jsp:include>
<% 
	String email=(String)session.getAttribute("email"); 
	String role=(String)session.getAttribute("role");
	if(email==null)
		response.sendRedirect("index.jsp?msg=YouHaveToLoginFirst");
%>
<%
	String msg=request.getParameter("msg");
	if(msg==null)
	{
		msg="";
	}
	
	DAOService dao=new DAOService();
	ArrayList<UserRegistered> al= dao.getRegisteredUsers();
	
%>
<div class="container-fluid mt-5 mb-3">	
	<div class="row">
		<div class="col-sm-12">
		<h1 style="text-align: center;" class="mb-5">Events Details</h1>
		<table class="table table-hover">
		<tr class="alert alert-info">
            <th style="text-align: center;" >User Email</th>
            <th style="text-align: center;" >Event Name</th>
            <th style="text-align: center;" >Amount</th>
            
            
        </tr>
		<%for(UserRegistered e:al){ %>
		<form action="" method="post">
		
        
       
			<tr>
				<td>
					<input style="text-align: center;" class="bg-info form-control " name="User" value="<%=e.getUser()%>">
				</td>
				<td>
					<input style="text-align: center;" class="form-control bg-info"  name="Event" value="<%=e.getEvent()%>">
				</td>
				<td>
					<input style="text-align: center;" class="form-control bg-info" name="Ammount" value="<%=e.getAmount()%>">
				</td>
		
			
			</tr>
			</form>
		<%} %>
		</table>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>