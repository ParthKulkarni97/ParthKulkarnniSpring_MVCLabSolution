<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Student Table</title>
</head>

<body>

	<div class="container">

		<h3>Student</h3>
		<hr>

		<!-- Add a search form -->

		<form action="/StudentManagement/student/search" class="form-inline">

			<!-- Add a button -->
			<a href="/StudentManagement/student/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Student </a> <input
				type="search" name="name" placeholder="Name"
				class="form-control-sm ml-5 mr-2 mb-3" /> <input type="search"
				name="country" placeholder="Country" class="form-control-sm mr-2 mb-3" />

			<button type="submit" class="btn btn-success btn-sm mb-3">Search</button>

		</form>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Student}" var="tempstudent">
					<tr>
						<td><c:out value="${tempstudent.name}" /></td>
						<td><c:out value="${tempstudent.department}" /></td>
						<td><c:out value="${tempstudent.country}" /></td>
						<td>
							<!-- Add "update" button/link --> <a href="/StudentManagement/student/showFormForUpdate?studentId=${tempstudent.id}" class="btn btn-info btn-sm">Update</a> 
							<!-- Add "delete" button/link --> <a href="/StudentManagement/student/delete?studentId=${tempstudent.id}" class="btn btn-danger btn-sm" onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>



