<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-header text-center">
						<h3>Update Your Notes</h3>
					</div>
					<div class="card-body">
						<form action="update_notes" method="post">
							<div class="mb-3">
								<label>Enter Title</label> <input type="text" name="title"
									class="form-control" value="${notes.title }">

							</div>

							<div class="mb-3">
								<label>Enter Description</label>
								
								 <textarea rows="8" cols="" value="${notes.discription }" class="form-control" name="discription" ></textarea>
 
							</div>

                             <input type="hidden" name="id" value="${notes.id }">
							<button class="btn btn-primary mt-4">Update</button>


						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>