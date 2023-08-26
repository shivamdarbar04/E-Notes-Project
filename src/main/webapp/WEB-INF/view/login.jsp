
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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Custom CSS */
.transparent-form {
	background-color: rgba(255, 255, 255, 0.7);
	/* Adjust RGB values and opacity as needed */
	padding: 20px;
	border-radius: 10px; /* Add rounded corners for a nicer look */
}
</style>
</head>

<body style="background-color: silver;">

	<%@include file="/WEB-INF/resource/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row ">
			<div class="col-md-6 offset-md-3 transparent-form">
				<div class="card">
					<div class="card-header text-center">
						<h3>Login Page</h3>
						<c:if test="${not empty msg }">
						<p class="fs-5 fw-bold text-danger">${msg}</p>
						<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="loginUser" method="post">

							<div class="form-group">
								<label for="name"></label> <input type="text"
									class="form-control " name="email" placeholder="Enter Email" required>
							</div>
							<div class="mb-3">
								<label class="form-label"></label> <input
									type="password" class="form-control" name="password" placeholder="Enter Password" required>
							</div>
							<button class="btn btn-primary col-md-12">Login</button>


						</form>
					</div>
					<div class="card-footer text-center ">
						<p class="fs-6">
							don't have an account <a href="${pageContext.request.contextPath}/register"
								class="text-decoration-none">Create New Account</a>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>


</body>
</html>
