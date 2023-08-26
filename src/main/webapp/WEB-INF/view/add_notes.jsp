<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body style="background-color: silver;">

	<%@include file="/WEB-INF/resource/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-header text-center">
						<h3>Add Your Notes</h3>
						<c:if test="${not empty msg }">
							<p class="fs-3 fw-bold text-success">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="add_notes" >
							<div class="mb-3">
								<label>Enter Title</label> <input type="text" name="title"
									class="form-control" required>

							</div>

							<div class="mb-3">
								<label>Enter Description</label>
								<textarea rows="8" cols="" class="form-control"
									name="discription"></textarea>

							</div>

							<button class="btn btn-primary mt-4">Save</button>





						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>