<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>


	<!-- Admin Secure Path no Access  -->
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	<!-- END Admin Secure add_books.jsp path  -->


	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>

						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${not empty failedMsg }">
							<h5 class="text-center text-danger">${failedMsg }</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="InputEmail">Book Name*</label> <input name="bname"
									type="text" class="form-control" id="InputEmail"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="InputName">Author Name*</label> <input name="author"
									type="text" class="form-control" id="InputName"
									aria-describedby="namelHelp">
							</div>
							<div class="form-group">
								<label for="InputPrice">Price*</label> <input name="price"
									type="number" class="form-control" id="InputPrice"
									aria-describedby="pricelHelp">
							</div>
							<div class="form-group">
								<label for="InputState">Book Categories</label> <select
									name="categories" class="form-control" id="inputState">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="InputState">Book Status</label> <select
									name="status" class="form-control" id="inputState">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Active">Inactive</option>
								</select>
							</div>
							<div class="form-group">
								<label for="ControlField">Upload photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="ControlField" aria-describedby="photolHelp">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 50px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>