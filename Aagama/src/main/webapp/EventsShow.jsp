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
<jsp:include page="UserMenu.jsp"></jsp:include>
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
		<h1 style="text-align: center;" class="mb-5">Events Details</h1>
		
		
		<%for(Event e:al){ %>
		
		<%--<form action="registerUser.jsp" method="post"> --%>
		<div class="col-sm-3">
                    <div class="card">
                    <%if(e.getId().startsWith("PPT")){ %>
                    
                        <img class="card-img-top" src="images/ppt2.png" alt="Event Image">
                        <%}else if(e.getId().startsWith("DANCE")) {%>
                        <img class="card-img-top" src="images/dance.jpg" alt="Event Image">
                        <%}else if(e.getId().startsWith("WEB")){%>
                        <img class="card-img-top" src="images/wizard2.jpg" alt="Event Image">
                        <%}else{%>
                        <img class="card-img-top" src="images/CODING1.jpg" alt="Event Image">
                        <%}%>
                        <div class="card-body">
                            <h5 class="card-title"><%= e.getName() %></h5>
                            <p class="card-text">Winning Prize: <%= e.getWinningPrize() %></p>
                            <p class="card-text">Event Time: <%= e.getStartTime() %></p>
                            <p class="card-text">Starting Date: <%= e.getEventDate() %></p>
                            <p class="card-text">Location: <%= e.getLocation() %></p>
                            <p class="card-text">Registration Amount: <%= e.getRegAmount() %></p>
                            
                                <input type="hidden" name="eventId" value="<%= e.getId() %>">
                               
                                <a class="btn btn-primary" href="registerUser.jsp?eventid=<%=e.getId()%>">Register</a>
                            
                        </div>
                    </div>
                  </div>  
                   <%-- </form> --%>
                
		
		
		
		
		
			
		
		
			
		
		<%} %>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
			