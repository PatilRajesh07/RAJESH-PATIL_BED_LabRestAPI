<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Student Management</title>
</head>
<body class="bg-light">
	<div
		class="container rounded p-3 my-5 text-black border shadow p-3 mb-5 bg-white rounded">
		<div class="container rounded p-3 my-0 bg-info shadow rounded">
			<h1 style="text-align: center;" class="text-light">Students
				Management</h1>
			<h2 style="text-align: center;">Indian Institute Of Technology - Roorkee</h2>
		</div>
		<hr style="background-color: black; height: 5px;">
		<div class="container">

			<h3>Students Directory</h3>
			<hr>

			<!-- Add a search form -->

			<form action="/StudentManagement/students/search" class="form-inline">

				<!-- Add a button -->
				<div class="col-sm-10">
					<a href="/StudentManagement/students/showFormForAdd"
						class="btn btn-outline-info btn-lg btn-sm mr-2 mb-3 shadow rounded">
						<i class="fa fa-user-plus" aria-hidden="true"></i> Add Student
					</a> <a href="/StudentManagement/students/list"
						class="btn btn-outline-info btn-lg btn-sm mr-2 mb-3 shadow rounded"><i
						class="fa fa-address-book" aria-hidden="true"></i> Student List </a>
				</div>
				<div class="col-sm-2">
					<a href="/StudentManagement/logout"
						class="btn btn-outline-info btn-lg btn-sm mr-2 mb-2 shadow rounded"><i
						class="fa fa-sign-out" aria-hidden="true"></i> Logout </a>
				</div>



				<table
					class="table table-bordered table-striped shadow rounded p-3 my-3">
					<thead class="thead-dark">
						<tr>
							<th style="text-align: center">Student Id</th>
							<th style="text-align: center">First Name</th>
							<th style="text-align: center">Last Name</th>
							<th style="text-align: center">Course</th>
							<th style="text-align: center">Country</th>
							<th style="text-align: center">Action</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${Students}" var="tempStudent">

							<tr>
								<td style="text-align: center"><c:out
										value="${tempStudent.id}" /></td>
								<td style="text-align: center"><c:out
										value="${tempStudent.firstName}" /></td>
								<td style="text-align: center"><c:out
										value="${tempStudent.lastName}" /></td>
								<td style="text-align: center"><c:out
										value="${tempStudent.course}" /></td>
								<td style="text-align: center"><c:out
										value="${tempStudent.country}" /></td>
								<td>

									<div style="text-align: center">
										<!-- Add "update" button/link -->
										<a
											href="/StudentManagement/students/showFormForUpdate?studentId=${tempStudent.id}"
											class="btn btn-outline-info btn-lg btn-sm shadow rounded"><i
											class="fas fa-pen"></i> Update </a> |

										<!-- Add "delete" button/link -->
										<a
											href="/StudentManagement/students/delete?studentId=${tempStudent.id}"
											class="btn btn-outline-danger btn-sm shadow rounded"
											onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"><i
											class="fas fa-trash"></i> Delete </a>
									</div>
								</td>

							</tr>

						</c:forEach>
					</tbody>

				</table>
			</form>
		</div>
	</div>
</body>
</html>