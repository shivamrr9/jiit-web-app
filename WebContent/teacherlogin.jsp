<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Teacher Login</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/style.css">
<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
		<script type="text/javascript" src="js/modernizr.custom.86080.js"></script>
		
</head>

<body id="page">
<ul class="cb-slideshow">
            <li><span>Image 01</span><div></div></li>
            <li><span>Image 02</span><div></div></li>
            <li><span>Image 03</span><div></div></li>
            <li><span>Image 04</span><div></div></li>
            <li><span>Image 05</span><div></div></li>
            <li><span>Image 06</span><div></div></li>
        </ul>
<div class="pen-title">
 <h1>Teacher Login</h1><span style="font-size:18px;">JIIT HELP.. Initiative to help Jiitians</span>
</div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form action="TLogin" method="post">
      <div class="input-container">
      <%
String s = (String) request.getParameter("id");
if(s!=null)
{
out.write("<script>\n");
out.write("alert('Enter Correct Credentials!!')");
out.write("</script>\n");
}
%>
        <input style="text-transform: capitalize;" type=text name="usertlogin" required="required"/>
        <label for="user">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type=password name="pwdtlogin" required="required"/>
        <label for="password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Go</span></button>
      </div>
      <div class="footer"><a href="#">Forgot your password?</a></div>
    </form>
  </div>
  <br>
  <a style="font-size:25px;" href="index.jsp"><u>Student Login?</u></a>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
