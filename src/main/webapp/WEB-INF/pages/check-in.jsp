<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Web Check-in</title>
<link rel='stylesheet' type='text/css' href="resources/css/style.css">
</head>
<body>
	<div class="container">
		<div class="banner">
			<h3><i>Web Check-in</i></h3>
		</div>
		<div class="form">
			<div class="register">
				<h4 class="error">${error}</h4>
				<form method="post" action="register"  method="post" modelAttribute="customer">
					<input placeholder="Booking-Id" type="text" name="ID" required />
					
					<input placeholder="Flight-Number" type="text" name="Flight Number" required />
				
					<input placeholder="email" type="email" name="Email" required /> 
					
					
					<input type="submit" value="Check-in">
					
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		document.querySelector('#login-switch').addEventListener('click', () => {
			document.querySelector('.register').style.display = 'none';
			document.querySelector('.login').style.display = 'block';
			
		});
		document.querySelector('#register-switch').addEventListener('click', () => {
			document.querySelector('.login').style.display = 'none';
			document.querySelector('.register').style.display = 'block';
			
		});
	</script>
</body>
</html>