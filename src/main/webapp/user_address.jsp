<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row -3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">

						<h3 class="text-center text-success">Add Address</h3>
						<form action="">
							<div class="form-row">

								<div class="form-group col-md-6">
									<label for="inputAddress">Address</label> <input type="text"
										class="form-control" id="inputAddress">
								</div>

								<div class="form-group col-md-6">
									<label for="inputLandmark">Landmark</label> <input type="text"
										class="form-control" id="inputLandmark">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="inputCity">City</label> <input type="text"
										class="form-control" id="inputCity">
								</div>
								<div class="form-group col-md-4">
									<label for="inputCity">State</label> <input type="text"
										class="form-control" id="inputCity">
								</div>
								<div class="form-group col-md-4">
									<label for="inputCity">Zip</label> <input type="text"
										class="form-control" id="inputCity">
								</div>
							</div>
							
							<div class="text-center">
							<button class="btn btn-warning text-white">Add Address</button>
							</div>
							
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>