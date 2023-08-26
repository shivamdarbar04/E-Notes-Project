<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored = "false" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-book"></i>
			Enotes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="${pageContext.request.contextPath}/home"><i
						class="fa-solid fa-house-user"></i> Home</a></li>
						<c:if test="${not empty userObj }">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/add_notes">Add
						Notes</a>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/view_notes">View
						all Notes</a></li>
						</c:if>
			</ul>

			<form class="form-inline my-2 my-lg-0">
			<c:if test="${empty userObj }">
				<a href="${pageContext.request.contextPath}/login" class="btn btn-outline-warning" type="submit">Login</a>
				<a href="${pageContext.request.contextPath}/register" class="btn btn-outline-warning" type="submit">Register</a>
            </c:if>
            
            <c:if test="${not empty userObj }">
				<a href="#" class="btn btn-outline-warning" type="submit"><i class="fa-solid fa-user-lock"></i> ${userObj.fullName }</a>
				<a href="${pageContext.request.contextPath}/user/logout" class="btn btn-outline-warning" type="submit">logout</a>
            </c:if>
            
			</form>

			<!-- <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item">
          <a class="nav-link active btn btn-white" aria-current="page"
								href="#">Home</a>
        </li>
        <li class="nav-item"><a class="nav-link" href="#">Add Notes</a>
        
        
        </li>
      </ul> -->


		</div>
	</div>
</nav>
