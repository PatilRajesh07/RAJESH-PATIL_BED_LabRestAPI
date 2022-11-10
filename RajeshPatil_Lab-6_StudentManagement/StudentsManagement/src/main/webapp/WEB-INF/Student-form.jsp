<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<!-- Add title bar -->
	<div
		class="container rounded p-3 my-5 text-black border shadow p-3 mb-5 bg-white rounded">
		<div class="container rounded p-3 my-0 bg-info shadow rounded">
			<h1 style="text-align: center;" class="text-light">Student
				Management</h1>
			<h2 style="text-align: center;">Indian Institute Of Technology - Roorkee</h2>
		</div>
		<hr style="background-color: black; height: 5px;">

		<div class="container rounded">
			<div class="row">
				<div class="col-sm-9">
					<h3>Students Directory</h3>
				</div>

				<!-- Add "navigation buttons" -->
				<div class="col-sm-3">
					<a href="/StudentManagement/students/list"
						class="btn btn-outline-info btn-lg btn-sm mr-2 mb-3  shadow rounded"><i
						class="fa fa-address-book" aria-hidden="true"></i> Student List </a> 
						
					<a href="/StudentManagement/logout"
						class="btn btn-outline-info btn-lg btn-sm mr-2 mb-3  shadow rounded"><i
						class="fa fa-sign-out" aria-hidden="true"></i> Logout </a>

				</div>
			</div>
			<hr>
			<div class="container">
				<h3 style="text-align: center;">
					<span class="badge badge-secondary shadow rounded">Student
						Form</span>
				</h3>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<form action="/StudentManagement/students/save" method="POST">

							<!-- Add hidden form field to handle update -->
							<div class="form-group">
								<input type="hidden"
									class="form-control mb-4 col-4 shadow rounded"
									placeholder="Enter Id" name="id" value="${Student.id}">
							</div>

							<div class="form-group">
								<input type="text" class="form-control shadow rounded"
									placeholder="First Name" name="firstName"
									value="${Student.firstName}">
							</div>

							<div class="form-group">
								<input type="text" class="form-control shadow rounded"
									placeholder="Last Name" name="lastName"
									value="${Student.lastName}">
							</div>

							<div class="form-group">
								<input type="text" class="form-control shadow rounded"
									placeholder="Course" name="course" value="${Student.course}">
							</div>

							<div class="form-group">
								<input type="text" class="form-control shadow rounded"
									placeholder="Country" name="country" value="${Student.country}">
							</div>

							<!-- Add buttons to "save" and "reset" the form -->
							<div class="col-md-14 text-center">

								<button type="submit"
									class="btn btn-outline-success mr-2 mb-2 col-4 shadow rounded">
									<i class="fa fa-floppy-o" aria-hidden="true"></i> Save
								</button>

								<button
									class="btn btn-outline-secondary mr-2 mb-2 col-4 shadow rounded"
									type="reset" value="Reset">
									<i class="fa fa-refresh" aria-hidden="true"></i> Reset
								</button>

							</div>

						</form>
					</div>
					<div class="col-md-4"></div>
				</div>

			</div>
		</div>
	</div>

</body>

</html>
