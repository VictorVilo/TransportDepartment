<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>

	<script type="text/javascript">
		
		function valdate(){
			debugger;
			
			//get the values from the form
			var firstname = document.getElementById("firstname").value;
			var lastname = document.getElementById("lastname").value;
			var username = document.getElementById("username").value;
			var pasword = document.getElementById("password").value;
			var passconfirm = document.getElementById("passconfirm").value;
			var regno = document.getElementById("regno").value;
			var email = document.getElementById("email").value;
			
			//check if the firstname is empty or null
			if(firstname == null || firstname == ''){
				alert("Please enter the first name!!");
				return false;
			}
			
			//check if the last name is null or empty
			if(lastname == null || lastname == ''){
				alert("Please enter the last name!!");
				return false;
			}
			
			//check if the registration number is empty
			if(regno == null || regno == ''){
				alert("Please enter the registration number");
				return false;
			}
			//check if the user has entered the username
			if(username == null || username == ''){
				alert("Please enter the username!!!");
				return false;
			}
			
			//check if the user has entered the password
			if(password == null || password == ''){
				alert("Please enter the password");
				return false;
			}
			
			//check if the user has confirmed the password
			if(passconfirm == null || passconfirm == ''){
				alert("Please confirm the password");
				return false;
			}
			
			//check if the user has entered the email address
			if(email == null || email == ''){
				alert("Please enter the email address");
				return false;
			}
			
			//check if the two entered passwords match
			//if(password !== passconfirm){
				//alert("The two passwords do not match!!");
			//	return false;
			//}
			
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
					 <form action="Signup" >
					 	<h1>Sign Up</h1>
					 	<div class="form-group">
					 		<input type="text" id="firstname" class="form-control" name="firstname" placeholder="Enter first name">
					 	</div>
					 	<div class="form-group">
					 		<input type="text" id="lastname" class="form-control" name="lastname" placeholder="Enter last name">
					 	</div>
					 	<div class="form-group">
					 		<input type="text" id="regno" class="form-control" name="regno" placeholder="Enter registration number">
					 	</div>
					 	<div class="form-group">
					 		<input type="text" id="username" class="form-control" name="username" placeholder="Enter user name">
					 	</div>
					 	<div class="form-group">
					 		<input type="password" id="password" class="form-control" name="password" placeholder="Enter password">
					 	</div>
					 	<div class="form-group">
					 		<input type="password" id="passconfirm" class="form-control" name="passconfirm" placeholder="Confirm password">
					 	</div>
					 	<div class="form-group">
					 		<input type="email" id="email" class="form-control" name="email" placeholder="Enter email">
					 	</div>
					 	
					 	<input type="submit" value="Sign In" class="btn btn-success" onclick="return valdate();">
					 </form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>