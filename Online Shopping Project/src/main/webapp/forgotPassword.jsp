<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>

			<form action="forgotpasswordAction.jsp" method="post">

				<input type="email" name="email" placeholder="Enter Email" required> <input
					name="mobilenumber" type="number" placeholder="Enter Mobile number" required> <select	name="securityquestion">
	<option value="What was your first car?">What was your first car?</option>
	<option value="what is yor first pet name?">what is your first pet name?</option>
	<option value="what elementry scool did you attend?">what elementry scool did you attend?</option>
	<option value="what is the name of your town where you born?">	is the name of your town where you born?</option>

				</select>
				 <input type="text" name="answer" placeholder="Enter Your answer" required>
				  <input type="password" name="newpassword"	placeholder="new password">
					 <input type="submit" value="save">

			</form>


			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whyforgotPassword'>
		<%
		String msg=request.getParameter("msg");
		
		if("done".equals(msg))
		{
		
		
		%>
			<h1>Password Changed Successfully!</h1>			
			<%} %>			
			<%
			String msg2=request.getParameter("msg");
			if("invalid".equals(msg2))
			{						
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
				
			<%} %>				
			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>
</body>
</html>