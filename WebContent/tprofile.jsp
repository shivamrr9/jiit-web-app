<!DOCTYPE html>
<html>
<title>Profile</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel='stylesheet' href="css/pstyle.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
</style>
<body class="w3-theme-l5">
<%
String s1; int a1;
s1= (String) session.getAttribute("tuser");
a1= (int) session.getAttribute("tid");
%>

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>

  
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i><%=s1 %></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>  
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
      <a href="#" class="w3-bar-item w3-button">One new friend request</a>
      <a href="#" class="w3-bar-item w3-button">John Doe posted on your wall</a>
      <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>
    </div>
  </div>
 <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="My Account"><i class="fa fa-user"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
    <a onclick="document.getElementById('id01').style.display='block'" href="#" class="w3-bar-item w3-button">Change Password <i class="fa fa-folder-o"></i></a>
  	<div id="id01" class="w3-modal w3-animate-opacity">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-large w3-display-topright">&times;</span>
        <h2 style="text-align:center;">Change Password</h2>
      </header>
      <%
String s4;
s4 =  request.getParameter("check");
if(s4!=null)
{
	out.write("<script>\n");
	out.write("alert('Password Changed Successfully!!')");
	out.write("</script>\n");	
	
}
/*else if()
{
	out.write("<script>\n");
	out.write("alert('Old Password wrong. Enter correct details!!')");
	out.write("</script>\n");
	
}*/
else{}
%>
      <div class="w3-container">
        <form action="ptchange?id=<%=a1%>" method="post" class="w3-container">
<center>
		<label>Old Password</label>
		<input class="w3-input w3-animate-input" type=password name="opwd" style="width:40%" />
		
		<label>New Password</label>
		<input class="w3-input w3-animate-input" type=password name="npwd" style="width:40%" /><br>
		
		<button class="w3-btn w3-blue-grey">Change Password</button><br><br>
		</center>
		</form>
      </div>
    </div>
  </div>
      <a href="${pageContext.request.contextPath}/logout" class="w3-bar-item w3-button">Logout <i class="fa fa-sign-out"></i></a>
    </div>
    </div>
  
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="Jiit Help:By Jiit For Jiit">JiiT HelP <img height=25px; width=25px; src="${pageContext.request.contextPath}/img/jiit.png" /></a>
 </div>
 </div>
</div>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
        <br>
         <h4 class="w3-center">My Profile</h4>
         
         <center>
         <button onclick="document.getElementById('id02').style.display='block'" type="button" class="w3-button w3-theme"><i class="fa fa-pencil-square-o"></i>Edit Profile</button>
         <button onclick="document.getElementById('id04').style.display='block'" class="w3-button w3-theme" type="button"><i class="fa fa-pencil-square-o"></i>Send Mail</button>
         </center>
         
         <div class="w3-container">
  <div id="id04" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id04').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Send Mail</h2>
      </header>
      <div class="w3-container">
        <form action="mail" method="post" class="w3-container w3-light-grey">
        <center>
  <label>To:</label>
  <input class="w3-input w3-animate-input" style="width:30%" name="to" type="text">

  <label>Subject:</label>
  <input class="w3-input w3-animate-input" style="width:30%" name="sub" type="text">
  
  <label>Enter Message:</label>
  <input class="w3-input w3-border-0" placeholder="Enter meaasge here..." name="msg" type="text"><br>
  
  <button class="w3-btn w3-blue-grey">Send</button><br><br>
</center>
</form>
      </div>
    </div>
  </div>
</div>  
         
         
         <div class="w3-container">
<div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-animate-zoom">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id02').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Edit Profile</h2>
      </header>
       <%
         String p1,p2,p3;
         p1=(String)request.getAttribute("department");
         p2=(String)request.getAttribute("dob");
         p3=(String)request.getAttribute("foi");
         if(p1==null || p2==null ||p3==null)
         {
        	 p1="Department";
        	 p2="Date of Birth";
        	 p3="Field Of Intrest";
         } 
         %>
      
      <div class="w3-container">
        <form action="teditprofile?id=<%=a1 %>" method="post" class="w3-container w3-card-4 w3-light-grey">
  <center>
  <h2>Complete Your Profile!!</h2>
  <p><label>Username:</label>
  <input class="w3-input w3-animate-input" value="<%=s1 %>" style="width:30%;" name="e1" type="text"></p>

  <p><label>Department</label>
  <input style="width:30%;" class="w3-input w3-animate-input" name="e2" type="text"></p>
  
  <p><label>Date Of Birth (formal: 1-03-14)</label>
  <input class="w3-input w3-animate-input" style="width:30%;" name="e3" type="text"></p>
  
  <p><label>Field Of Intrest</label>
  <input class="w3-input w3-animate-input" style="width:30%;" name="e4" type="text"></p><br>
  
  <button class="w3-btn w3-blue-grey">Save</button><br><br>
  </center>
</form>
<%
String s7=request.getParameter("ep");
if(s7!=null)
{
	out.write("<script>\n");
	out.write("alert('Profile Details Updated')");
	out.write("</script>\n");
}
%>

      </div>

    </div>
  </div>
</div>
         <hr>
            <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i><%=p1%></p>
         	<p><i class="fa fa-book fa-fw w3-margin-right w3-text-theme"></i></p><%=p3%>
         	<p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i><%=p2 %></p>
        </div>
      </div>
      
      <!-- Accordion -->
      <div class="w3-card-2 w3-round">
        <div class="w3-white">
          <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> Enter Attendance</button>
          <div id="Demo1" class="w3-hide w3-container">
          
          <div class="w3-container">
  
  <div id="id03" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id03').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Maths Marks</h2>
      </header>
      <div class="w3-container"><br>
        Enter marks:<input type=number name="maths" /><br><br>
      </div>
    </div>
  </div>
</div>
          
 <a onclick="document.getElementById('id03').style.display='block'" style="text-decoration:none;">Maths-2</a><br>
            <a style="text-decoration:none;" href="#">Java</a><br>
            <a style="text-decoration:none;" href="#">Data Structures</a><br>
            <a style="text-decoration:none;" href="#">Networks</a><br>
            <a style="text-decoration:none;" href="#">OOPS Lab</a><br>
          </div>
      
          <button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-pencil fa-fw w3-margin-right"></i>Enter Marks/Grades</button>
          <div id="Demo3" class="w3-hide w3-container">
         
          <a style="text-decoration:none;" href="#">Maths-2</a><br>
            <a style="text-decoration:none;" href="#">Java</a><br>
            <a style="text-decoration:none;" href="#">Data Structures</a><br>
            <a style="text-decoration:none;" href="#">Networks</a><br>
            <a style="text-decoration:none;" href="#">OOPS Lab</a><br>
         
          </div>
        </div>      
      </div>
      <br>
      
       <!-- Alert Box -->
      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Hey!</strong></p>
        <p>People are looking at your profile. Find out who.</p>
      </div>
    
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    <div class="w3-col m7">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card-2 w3-round w3-white">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">Post Update</h6>
              <input class="w3-input w3-animate-input" placeholder="Enter text here.." type=text name="feed" style="width:60%" />
             <br> <button type="button" class="w3-button w3-theme"><i class="fa fa-pencil"></i>  Post</button> 
            </div>
          </div>
        </div>
      </div>
      
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <span class="w3-right w3-opacity">1 min</span>
        
        <h4>Yash Hisaria</h4><br>
        <hr class="w3-clear">
        <p>Lecture is cancelled.</p>
          <div class="w3-row-padding" style="margin:0 -16px">
            
        </div>
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>
      
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <span class="w3-right w3-opacity">16 min</span>
        <h4>Arpit Bhatia</h4><br>
        <hr class="w3-clear">
        <p>Extra Class Scheduled</p>
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>  

            
    <!-- End Middle Column -->
    </div>
    
    <!-- Right Col
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>
 
<script>
// Accordion
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else { 
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html> 
