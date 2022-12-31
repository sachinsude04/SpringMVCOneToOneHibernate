<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function editPerson(id) {
		alert("edit person");
		document.location.href = "edit?id=" + id;
	}
</script>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h2>Student Table</h2>
		<p>All table data are displayed below:</p>
		<table class="table" border="1">
			<thead>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>Mobile</th>
					<th>PANNO</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="person">
					<tr>
						<td>${person.id}</td>
						<td>${person.name}</td>
						<td>${person.mob}</td>
						<td>${person.pancard.panno}</td>
						<td><a href="#"
							onclick="javascript:editPerson(${person.id});">Edit</a><a
							href="delete?id=${person.id}">Delete</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>