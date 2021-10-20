<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
</head>
<body class="mt-3">
	<!-- <form action="../updateuser" method="post"> -->
	<%-- 		<input type="hidden" name="id" value="${user.id }"> --%>
	<%-- 		Name:<input type="text" name="name" value="${user.name }"><br> --%>
	<%-- 		Email:<input type="email" name="email" value="${user.email }"><br> --%>
	<%-- 		Password:<input type="password" name="password" value="${user.password }"><br> --%>
	<!-- 		<input type="submit"> -->
	<!-- 	</form> -->
<h3 style="text-align: center; background:green; color: white;">Edit Your Data</h3>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4 border p-2">
				<form action="../updateuser" method="post">
					<input type="hidden" name="id" value="${user.id }">
					<div class="form-group mb-2">
						<label for="exampleInputPassword1">Name</label> <input type="text"
							class="form-control" name="name" value="${user.name }">
					</div>

					<div class="form-group mb-2">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" name="email"
							aria-describedby="emailHelp" value="${user.email }"> <small
							id="emailHelp" class="form-text text-muted">We'll never
							share your email with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> 
						<input
							type="password" class="form-control" name="password" id="myInput"
							value="${user.password }">
							<input type="checkbox" onclick="myFunction()"> Show Password
					</div>

					<button type="submit" class="btn btn-primary mt-3">Submit</button>
				</form>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}

</script>
	
</body>
</html>