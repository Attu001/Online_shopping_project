<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    
    <input type="text" name="name" placeholder="Enter Your Name" required>
        <input type="text" name="email" placeholder="Enter Your Email" required>
            <input type="number" name="mobilenumber" placeholder="Enter Your mobile number" required>
            <select name="securityquestion">
            <option value="What was your first car?">What was your first car?</option>
            <option value="what is yor first pet name?">what is yor first pet name?</option>
            <option value="what elementry scool did you attend?">what elementry scool did you attend?</option>
            <option value="what is the name of your town where you born?">what is the name of your town where you born?</option>
            
            </select>
                    <input type="text" name="answer" placeholder="Enter Your answer" required>
                           <input type="password" name="password" placeholder="Enter password" required>
                    
             <input type="submit" value="sign up">
    
    
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  
  %>

<h1 style="color='green'">Successfully Registered !</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>