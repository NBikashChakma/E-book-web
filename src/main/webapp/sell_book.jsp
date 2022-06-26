<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Book</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

	<!-- Secure sell book page  -->
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>


	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<h5 class="text-center text-primary p-1">Sell Old Book</h5>


						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${not empty failedMsg }">
							<h5 class="text-center text-danger">${failedMsg }</h5>
						</c:if>



						<form action="add_old_book" method="post"
							enctype="multipart/form-data">

							<input type="hidden" value="${userobj.email }" name="user">

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
								<label for="ControlField">Upload photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="ControlField" aria-describedby="photolHelp">
							</div>
							<button type="submit" class="btn btn-primary">Sell</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>