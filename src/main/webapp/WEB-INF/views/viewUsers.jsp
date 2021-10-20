<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Users</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.css"> 	

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
	<h3 style="text-align: center;">
		<a href="signup" class="btn btn-success">Add New User</a>
	</h3>
	<h3 style="text-align: center; background:green; color: white;">List Of Users</h3>

	<table id="table_id" class="table table-striped row-border cell-border hover display compact" style="width:97%">
	<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${users }" var="data">
			<tr>
				<td>${data.id }</td>
				<td>${data.name }</td>
				<td>${data.email }</td>
				<td>${data.password }</td>
				<td><a href="edituser/${data.id }"><i class="fas fa-pencil-alt"></i></a></td>
				<td><a href="deleteuser/${data.id }"><i class="far fa-trash-alt"></i></a></td>
			</tr>
		</c:forEach>
	</tbody>
	</table>

	<script type="text/javascript">
	
		$(document).ready(function() {
			$('#table_id').DataTable();
		});
		
	</script>

</body>
</html>