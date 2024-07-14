<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<jsp:useBean id="e1" class="mts.dto.Event" >
	<jsp:setProperty property="*" name="e1"/>	
</jsp:useBean>
<br>
<%
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	Date d=sdf.parse(e1.getEventDate());
	java.sql.Date dateJoin= new java.sql.Date(d.getTime() );
	Calendar c=Calendar.getInstance();
	String id=e1.getName().toUpperCase()+e1.getBranch()+""+dateJoin.toString().substring(0,4)+"M"+(d.getMonth()+1);
	e1.setId(id);
%>

<%

	try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.println("Driver is loaded");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aagamadb", "root","sunil");
			out.println("Connection is established...");
			PreparedStatement pstmt=con.prepareStatement("insert into events values(?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, e1.getId());
			pstmt.setString(2, e1.getName());
			pstmt.setString(3, e1.getType());
			pstmt.setString(4, e1.getBranch());
			pstmt.setString(5, e1.getRegAmount());
			pstmt.setString(6, e1.getCoordinatorId1());
			pstmt.setString(7, e1.getCoordinatorId2());
			pstmt.setString(8, e1.getLocation());
			pstmt.setString(9, e1.getWinningPrize());
			pstmt.setString(10, e1.getStartTime());
			pstmt.setString(11, e1.getEventDate());
			pstmt.executeUpdate();
			con.close();
			response.sendRedirect("AddEvent.jsp?msg=EventDetailsAddedSuccessully");
	}catch(Exception ex)
	{	System.out.println(ex);
		response.sendRedirect("AddEvent.jsp?msg=AddingEventDetailsFailed");
	}
%>




