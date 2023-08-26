<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/resource/component/all_link.jsp"%>


</head>

<body style="background-color: silver;">

	<%@include file="/WEB-INF/resource/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Registration Page</h3>
						<c:if test="${not empty msg }">
						<p class="fs-3 fw-bold text-success">${msg}</p>
						<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="registerUser" method="post">
							<div class="mb-3">
								<label></label> 
								<input type="text" name="fullName" class="form-control" placeholder="Enter Full Name" required>

							</div>
							
							<div class="mb-3">
								<label></label> 
								<input type="text" name="qualification" class="form-control" placeholder="Enter qualification" required>

							</div>
							
							<div class="mb-3">
								<label></label> 
								<input type="email" name="email" class="form-control" placeholder="Enter Email" required>

							</div>
							
							<div class="mb-3">
								<label></label> 
								<input type="password" name="password" class="form-control" placeholder="Enter Password" required>

							</div>				
							
							<button class="btn btn-success col-md-12">Register</button>
					
							
						</form>
						<div class="card-footer text-center ">
						<p class="fs-6">
							Already have an account <a href="login"
								class="text-decoration-none">Login</a>
						</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>