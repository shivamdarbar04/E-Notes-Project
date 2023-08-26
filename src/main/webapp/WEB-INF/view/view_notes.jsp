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

	<div class="container-fluid p-4">
		<h4 class="text-center">View All Notes</h4>
		<c:if test="${not empty msg }">
			<p class="fs-5 fw-bold text-success text-center">${msg}</p>
			<c:remove var="msg" />
		</c:if>
		<div class="row">
			<c:forEach items="${list}" var="n">
				<div class="col-md-10 offset-md-1 mt-2">
					<div class="card">
						<div class="card-body">
							<div class="text-center">
								<img alt="" src="<c:url value="/resource/img/nts2.png"/>"
									width="50px">
							</div>
							<p>${n.title }</p>
							<p>${n.discription }</p>
							<p>Publish Date : ${n.date }</p>
							<p></p>

							<div class="text-center">
								<a href="edit_notes?id=${n.id }" class="btn btn-primary btn-sm">Update</a> <a
									href="delete_notes?id=${n.id }" class="btn btn-danger btn-sm">Delete</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>