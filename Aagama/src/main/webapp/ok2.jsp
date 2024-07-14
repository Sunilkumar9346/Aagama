
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Calendar"%>
<%
String dob=request.getParameter("dob");
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
Date dob2= sdf.parse(dob);
java.sql.Date dateJoin= new java.sql.Date( dob2.getTime() ); 

%>


<%
	try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.println("Driver is loaded");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/micdb", "root","madhu");
			out.println("Connection is established...");
			PreparedStatement pstmt=con.prepareStatement("insert into dummy1(doj) values(?)");
			pstmt.setDate(1, dateJoin);
			pstmt.executeUpdate();
			con.close();
			out.println("Success......");			
	}catch(Exception ex)
	{	out.println(ex);
	}
%>