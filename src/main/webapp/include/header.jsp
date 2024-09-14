 
    <header class="site-navbar js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="index.jsp" class="h2 mb-0"  style="color:#5176f0!important">Banking<span class="">.</span> </a></h1>
          </div>

          <div style="color:#5176f0!important" class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul  class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="index.jsp" style="color:#5176f0!important" class="nav-link">Home</a></li>
                <li class="has-children">
                  <a href="#about-section" style="color:#5176f0!important" class="nav-link">About Us</a>
                  <ul class="dropdown">
                    <li><a href="#team-section" style="color:#5176f0!important" class="nav-link">Team</a></li>
                    <li><a href="#pricing-section" style="color:#5176f0!important" class="nav-link">Pricing</a></li>
                    <li><a href="#faq-section" style="color:#5176f0!important" class="nav-link">FAQ</a></li>
                    <li><a href="#gallery-section" style="color:#5176f0!important" class="nav-link">Gallery</a></li>
                    <li><a href="#services-section"style="color:#5176f0!important"  class="nav-link">Services</a></li>
                    <li><a href="#testimonials-section" style="color:#5176f0!important" class="nav-link">Testimonials</a></li>
                    <li class="has-children">
                      <a href="#" style="color:#5176f0!important">More Links</a>
                      <ul class="dropdown">
                        <li><a href="#" >Menu One</a></li>
                        <li><a href="#">Menu Two</a></li>
                        <li><a href="#">Menu Three</a></li>
                      </ul>
                    </li>
                  </ul>
                  
                </li>
                
                
                
                <li><a href="contact.jsp" style="color:#5176f0!important" class="nav-link">Contact</a></li>
                  <li class="social"><a href="myAccount.jsp" style="color:#5176f0!important" class="nav-link">My Account</a></li>
                
                <%
                            	String name = (String) session.getAttribute("name");
								String email = (String) session.getAttribute("username");
								
								if(email != "" && email != null ){	
				%>|
                <li class="social"style="color:#ff1717!important">Welcome Mr.  <% out.print(name);%></li>|
                <li class="social"><a href="logout.jsp" style="color:#5176f0!important" class="nav-link">Logout</a></li>
                <% 
						     	}else{
				%>
				<li class="social"><a href="createNewAccount.jsp" style="color:#5176f0!important" class="nav-link">Open New Account</a></li>
                <li class="social"><a href="login.jsp" style="color:#5176f0!important" >Login</a></li>|
                <li class="social"><a href="admin/adminLogin.jsp" style="color:#5176f0!important" class="nav-link">Admin Login</a></li>
                <%	
							 }
				 %>
              </ul>
            </nav>
          </div>


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3"></span></a></div>

        </div>
      </div>
      
    </header>