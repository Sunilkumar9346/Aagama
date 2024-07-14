<jsp:useBean id="r" class="mts.dto.Register" >
	<jsp:setProperty name="r" property="*" />	
</jsp:useBean>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	String submit=request.getParameter("submit");
	out.println(submit);
	String msg="Not Updated........";
	if(submit!=null)
	{
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aagamadb", "root", "sunil");
			PreparedStatement pstmt=null;
			if(submit.equalsIgnoreCase("update"))
			{
				pstmt=con.prepareStatement("update register set fullname=? where email=?");
				pstmt.setString(1,r.getFullName());
				pstmt.setString(2, r.getEmail());
				msg="Updated.....";
			}else if(submit.equalsIgnoreCase("delete"))
			{
				pstmt=con.prepareStatement("delete from register where email=?");
				pstmt.setString(1,r.getEmail());
				msg="Deleted...";
			}
			pstmt.executeUpdate();
			con.close();
			response.sendRedirect("ViewCoordinators.jsp?msg="+msg);
		}catch(Exception ex)
		{
				System.out.println(ex);
		}
	}else
	{
		response.sendRedirect("ViewCoordinator.jsp");
	}
%>