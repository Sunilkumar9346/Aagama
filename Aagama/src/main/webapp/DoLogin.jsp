<%@page import="java.sql.*" %>
<jsp:useBean id="r" class="mts.dto.Register" >
	<jsp:setProperty name="r" property="*" />	
</jsp:useBean>
<%
	String role=null;
	try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.println("Driver is loaded");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aagamadb", "root","sunil");
			out.println("Connection is established...");
			PreparedStatement pstmt=con.prepareStatement("select * from register where email=? and password=?");
			pstmt.setString(1, r.getEmail());
			pstmt.setString(2, r.getPassword());
			ResultSet rs= pstmt.executeQuery();
			
			if(rs.next())
			{
				role=rs.getString("role");
				System.err.println(role);
			}
			con.close();
			if(role!=null)
			{	
				session.setAttribute("email", r.getEmail());
				session.setAttribute("role", role);
				if(role.equalsIgnoreCase("user"))
					response.sendRedirect("UserHome.jsp");
				else if(role.equalsIgnoreCase("admin"))
				{
					response.sendRedirect("AdminHome.jsp");
				}
			}
			else
			{	response.sendRedirect("login.jsp?msg=InvalidUseridOrPassword");
			}
	}catch(Exception ex)
	{
				out.println(ex);
	}
%>