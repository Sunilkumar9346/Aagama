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
<jsp:include page="HomeMenu.jsp"></jsp:include>
<%
	String msg=request.getParameter("msg");
	if(msg==null)
	{
		msg="";
	}
%>
<div class="container mt-5 mb-3">	
	<div class="row">
		<div class="col-sm-6">
		   <img alt="" src="images/reg.jpg" class="img img-thumbnail">
		</div>
		<div class="col-sm-6">
			<h1>Registration Page</h1>
			<form action="DoRegister.jsp" method="post">
				<div class="mt-3 mb-3">
					<input class="form-control" type="text" name="email" placeholder="Email:">
				</div>
				<div class="mb-3">
					<input class="form-control" type="password" name="password" placeholder="Password:">
				</div>
				<div class="mt-3 mb-3">
					<input class="form-control" type="text" name="college" placeholder="Colle Name:">
				</div>
				<div class="mb-3">
					<input class="form-control" type="text" name="fullName" placeholder="FullName:">
				</div>
				<div class="mb-3">
					<input class="form-control" type="text" name="phone" placeholder="Phone:">
				</div>
				<div class="mb-3">
					<input class="form-control" type="text" name="city" placeholder="City">
				</div>
				<div class="mb-3">
					<select name="role" class="form-control">
						<option>User</option>
					</select>
				</div>
				<div class="mb-3">
				<button class="btn btn-primary" type="submit">Submit</button>
				<button class="btn btn-danger" type="reset">Reset</button>
				<span><%=msg%></span>
				</div>
				
			</form>
			
		</div>
	</div>

</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>