<%@page import="java.util.ArrayList"%>
<%@page import="mts.dao.DAOService"%>
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
	ArrayList<String> al=dao.getCoordinatorIds();
%>
<div class="container mt-5 mb-3">	
	<div class="row">
		<div class="col-sm-12 mb-5">
			<h6 style="color:green;"><%=msg %></h6>
			<h1>Add Events</span></h1>
			<form action="DoAddEvent.jsp" method="post">
			<div class="row mb-2">
				<div class="col-sm-4">
					<input class="form-control bg-info" name="name" placeholder="Event Name:">
				</div>
				<div class="col-sm-4">
					<select class="form-control bg-info" name="type">
						<option>Technical</option>
						<option>Cultural</option>
					</select>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col-sm-4">
					<select class="form-control bg-info" name="branch" >
					<option>ECE</option>
					<option>EEE</option>
					<option>CSE</option>
					<option>IT</option>
					<option>AI</option>
					<option>MECH</option>
					<option>CIVIL</option>
					</select>
				</div>
				<div class="col-sm-4">
					<input class="form-control bg-info" name="regAmount" placeholder="RegistrationAmount:">
				</div>
			</div>
			<div class="row mb-2">
				<div class="col-sm-4">
					<select class="form-control bg-info" name="coordinatorId1" >
					<option>Select Coordinator-1</option>
					<%for(String id:al){ %>
						<option><%=id%></option>
					<% }%>
					</select>
				</div>
				<div class="col-sm-4">
					<select class="form-control bg-info" name="coordinatorId2" >
					<option>Select Coordinator-2</option>
					<%for(String id:al){ %>
						<option><%=id%></option>
					<% }%>
					</select>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col-sm-4">
					<input class="form-control bg-info" name="location" placeholder="Location:">
				</div>
				<div class="col-sm-4">
					<input class="form-control bg-info" name="winningPrize" placeholder="Winning Prize:">
				</div>
			</div>
			
			<div class="row mb-2">
				<div class="col-sm-4">
					<input class="form-control bg-info" name="startTime" placeholder="Start_time:">
				</div>
				<div class="col-sm-4">
					<input type="date" class="form-control bg-info" name="eventDate" placeholder="Date Of Event Held:">
				</div>
			</div>
			
			<div class="row mb-2">
				<div class="col-sm-4">
					<button class="btn btn-primary">Submit</button>
					<button class="btn btn-danger">Reset</button>
					
				</div>
			</div>
			
			</form>
		</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>