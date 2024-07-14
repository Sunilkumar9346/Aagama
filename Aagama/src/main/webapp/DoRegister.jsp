<%@page import="java.sql.*" %>
<jsp:useBean id="r" class="mts.dto.Register" >
	<jsp:setProperty name="r" property="*" />	
</jsp:useBean>
<%
	try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.println("Driver is loaded");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aagamadb", "root","sunil");
			out.println("Connection is established...");
			PreparedStatement pstmt=con.prepareStatement("insert into register(email,password,college,fullname,phone,city,role) values(?,?,?,?,?,?,?)");
			pstmt.setString(1, r.getEmail());
			pstmt.setString(2, r.getPassword());
			pstmt.setString(3, r.getCollege());
			pstmt.setString(4, r.getFullName());
			pstmt.setString(5, r.getPhone());
			pstmt.setString(6, r.getCity());
			pstmt.setString(7, r.getRole());
			pstmt.executeUpdate();
			con.close();
			String role=(String)session.getAttribute("role");
			if(role==null)
			response.sendRedirect("login.jsp?msg=RegistrationSuccessfull");
			else if(role.equalsIgnoreCase("admin"))
			response.sendRedirect("AddCoordinator.jsp?msg=CoordinatorDetailsAdded");
			
	}catch(Exception ex)
	{	System.out.println(ex);
		response.sendRedirect("register.jsp?msg=RegistrationFailed");

	}
%>