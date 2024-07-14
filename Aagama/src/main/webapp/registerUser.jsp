<%@page import="mts.dto.Event"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%-- <jsp:useBean id="r" class="mts.dto.Event" >
	<jsp:setProperty name="r" property="*" />	
</jsp:useBean> --%>
<%
   String email=(String)session.getAttribute("email"); 
   String role=(String)session.getAttribute("role");
      String eventId=request.getParameter("eventid");
 %>

<% 


   
   try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aagamadb","root","sunil");
	   PreparedStatement ptst=con.prepareStatement("insert into registeredusers values(?,?,?)");
	   ptst.setString(1,email);
	   ptst.setString(2,eventId);
	   ptst.setString(3,"unpaid");
	   
	   int count=ptst.executeUpdate();
	   System.out.println("updated...");
	   if (count==1){
		   response.sendRedirect("EventsShow.jsp?msg=SucessfullyRegistred");
		   
	   }
	   
	   
   }catch( Exception ex){
	   System.out.println(ex);
	   
   }

     

%>
