<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:import url="common/header.html"></c:import>
	<title>Result Register Page</title>
</head>
<body>
<!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#"><img id="logo"
				src="assets/fblogo.jpg" alt="logo" /> HMI</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="result-register.jsp">Register</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container">
    <form action="result" method="post">
        <h2 class="text-center">Result Registration</h2>
        
        <input type="hidden" name="mode" value="CREATE">
        
        <div class="mb-3">
            <label for="major" class="form-label">*Major</label>
            <input type="text" id="major" name="major" placeholder="Enter Major" class="form-control" required="required" autofocus>
        </div>
        
        <div class="mb-3">
            <label for="year" class="form-label">*Year</label>
            <input type="number" id="year" name="year" placeholder="Enter Year" class="form-control" required="required" autofocus>
        </div>
        
         <div class="mb-3">
            <label for="seatNo" class="form-label">*SeatNo</label>
            <input type="number" id="seatNo" name="seatNo" placeholder="Enter SeatNo" class="form-control" required="required" autofocus>
        </div>
        
        <div class="mb-3">
            <label for="name" class="form-label">*Name</label>
            <input type="text" id="name" name="name" placeholder="Enter Name" class="form-control" required="required" autofocus>
        </div>
        
         <div class="mb-3">
            <label for="grade" class="form-label">*Grade</label>
            <input type="text" id="grade" name="grade" placeholder="Enter Grade" class="form-control" required="required" autofocus>
        </div>
        
        <div class="mb-3">
            <div class="col-sm-9 col-sm-offset-3">
                <span class="help-block">*Required fields</span>
            </div>
        </div>
        
        <div class="mb-3 form-check">
      		<input type="checkbox" class="form-check-input" id="qualify" name="qualify" value="true">
      		<label class="form-check-label" for="qualify">*Qualify</label>
    	</div>
        
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-danger">Reset</button>
    </form> <!-- /form -->
</div> <!-- ./container -->
	
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>