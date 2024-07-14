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
%>
<div class="container mt-5 mb-3">	
	<div class="row">
		<div class="col-sm-12">
			<h1>Coordinators List</h1>
			<h4 class="alert alert-danger"><%=msg %></h4>
			<table class="table table-striped" style="width:100%">
			
			<thead>
					<th>EMAIL</th>
					<th>PASSWORD</th>
					<th>COLLEGE</th>
					<th>FULLNAME</th>
					<th>PHONE</th>
					<th>CITY</th>
					<th>ROLE</th>
			<thead>
					
			<%
	String dbrole=null;
	try{
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver is loaded");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aagamadb", "root","sunil");
			System.out.println("Connection is established...");
			PreparedStatement pstmt=con.prepareStatement("select * from register where role=?");
			pstmt.setString(1, "coordinator");
			ResultSet rs= pstmt.executeQuery();
			while(rs.next())
			{
 %>
 				<form action="UpdateCoordinator.jsp">
 				<tr>
				<td>
					<input class="form-control" name="email" value="<%=rs.getString("email")%>">
				</td>
				<td>
					<input class="form-control" name="password" value="<%=rs.getString("password")%>">
				</td>
				<td>
					<input class="form-control" name="college" value="<%=rs.getString("college")%>">
				</td>
				<td>
				<input class="form-control" name="fullName" value="<%=rs.getString("fullname")%>">
				</td>
				<td>
				<input class="form-control" name="phone" value="<%=rs.getString("phone")%>">
				</td>
				<td>
				<input class="form-control" name="city" value="<%=rs.getString("city")%>">
				</td>
				<td>
				<input class="form-control" name="role" value="<%=rs.getString("role")%>">
				</td>
				<td>
				<button name="submit"  value="update" class="btn btn-warning"  type="submit">Update</button>
				</td>
				<td>
				<button name="submit" value="delete" class="btn btn-danger" type="submit">Delete</button>
				</td>
				</tr>
				</form>
<%				
			}
			con.close();
	}catch(Exception ex)
	{
				out.println(ex);
	}
%>
			
			
			</table>
		</div>
	</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>