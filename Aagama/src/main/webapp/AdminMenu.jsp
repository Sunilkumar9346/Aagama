<% 
	String email=(String)session.getAttribute("email"); 
	String role=(String)session.getAttribute("role");
	if(email==null)
		response.sendRedirect("index.jsp?msg=YouHaveToLoginFirst");
%>
<!-- 
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    <img  style="width:150px" alt="" src="images/logo.png" ></a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav me-auto">
      <li class="nav-item">
          <a class="nav-link" href="AddCoordinator.jsp">Add Coordinator</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ViewCoordinators.jsp">View Coordinator</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="AddEvent.jsp">Add Event</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">View Event</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">ViewUsers</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logout.jsp">Logout</a>
        </li>        
      </ul>
      <span class="d-flex" style="color:yellow;"><%=role%>&nbsp;:&nbsp;<%=email%>&nbsp;</span>
    </div>
  </div>
</nav>
-->

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    <img  style="width:150px" alt="" src="images/logo.png" ></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav me-auto">  
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Coordinator</a>
          <ul class="dropdown-menu">            
            <li><a class="dropdown-item" href="AddCoordinator.jsp">Add</a></li>
            <li><a class="dropdown-item" href="ViewCoordinators.jsp">View</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Events</a>
          <ul class="dropdown-menu">
         <li><a class="dropdown-item" href="AddEvent.jsp">Add</a></li>
            <li><a class="dropdown-item" href="ViewEvents.jsp">View</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="showRegistredUsers.jsp">UsersRegistred</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="logout.jsp">Logout</a>
        </li>
      </ul>
      <span class="d-flex" style="color:yellow;"><%=role%>&nbsp;:&nbsp;<%=email%>&nbsp;</span>
    </div>
  </div>
</nav>


