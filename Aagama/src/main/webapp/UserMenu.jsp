<% 
	String email=(String)session.getAttribute("email"); 
	String role=(String)session.getAttribute("role");
%>
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
          <a class="nav-link" href="EventsShow.jsp">View Events</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logout.jsp">Logout</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"></a>
        </li>
        
      </ul>
      <span class="d-flex" style="color:yellow;"><%=role%>&nbsp;:&nbsp;<%=email%>&nbsp;</span>
      
    </div>
  </div>
</nav>