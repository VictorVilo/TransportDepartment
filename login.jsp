<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<title>Sign in</title>

<script type="text/javascript">
	
	function valdate(){
		debugger;
		
		//get the details from the from the form
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		
		//check if the user has entered some data and show error message
		//incase the fields are empty
		if(username == null || username == ''){
			alert("Please enter the username!!!");
			return false;
		}
		
		//check if the user entered some password
		if(password == null || password == ''){
			alert("Please enter the password");
			return false;
		}
		
		//else the user has entered all the details, return false
		return true;
	}

</script>

</head>
<body>

<jsp:include page="includes/navbar.jsp"></jsp:include>


<div class="modal-dialog text-center">
		<div class="col-sm-9 main-section">
			<div class="modal-content">

				<div class="col-12 form-input">
					 <form action="Login">
					 	<div class="form-group">
					 	<h1>Log in</h1>
					 		<input type="text" id="username" class="form-control" name="username" placeholder="Enter username">
					 	</div>
					 	<div class="form-group">
					 		<input type="password" id="password" class="form-control" name="password" placeholder="Enter password">
					 	</div>
					 	<input type="submit" value="Log in" class="btn btn-success" onclick="return valdate();">
					 </form>
				</div>

				<div class="col-12 forgot" >
					<a href="#">Forgot password</a>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>