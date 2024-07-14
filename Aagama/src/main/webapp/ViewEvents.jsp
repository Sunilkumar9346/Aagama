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
	ArrayList<Event> al= dao.getEvents();
	
%>
<div class="container-fluid mt-5 mb-3">	
	<div class="row">
		<div class="col-sm-12">
		<h1>Events Details</h1>
		<table class="table table-hover">
		<%for(Event e:al){ %>
		<form action="EventUpdate.jsp">
			<tr>
				<td>
					<input class="bg-info form-control" name="id" value="<%=e.getId()%>">
				</td>
				<td>
					<input class="form-control bg-info"  name="name" value="<%=e.getName()%>">
				</td>
				<td>
					<input class="form-control bg-info" name="type" value="<%=e.getType()%>">
				</td>
				<td>
				<input class="form-control bg-info" name="branch" value="<%=e.getBranch()%>">
					
				</td>
				<td>
					<input class="form-control bg-info" name="regAmount" value="<%=e.getRegAmount()%>">
				</td>
				<td>
					<input class="form-control bg-info" name="coordinatorId1" value="<%=e.getCoordinatorId1()%>">
						
				</td>
				<td>
					<input class="form-control bg-info" name="coordinatorId2" value="<%=e.getCoordinatorId2()%>">
				</td>
				<td>
					<input class="form-control bg-info" name="location" value="<%=e.getLocation()%>">
					
				</td>
				<td>
					<input class="form-control bg-info" name="winningPrize" value="<%=e.getWinningPrize()%>">
				</td>
				<td>
					<input class="form-control bg-info" name="startTime" value="<%=e.getStartTime()%>">
				</td>
				
				<td>
					<input class="form-control bg-info" name="eventDate" value="<%=e.getEventDate()%>">
				</td>
				<td>
					<button class="btn btn-primary" name="submit" value="update">Update</button>
				</td>
				<td>
					<button class="btn btn-danger" name="submit" value="delete">Delete</button>
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