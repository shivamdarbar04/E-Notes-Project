<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/resource/component/all_link.jsp"%>

</head>
<body style="background-color: #fofofo">

	<%@include file="/WEB-INF/resource/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-header text-center">
						<h3>Delete Your Notes</h3>
					</div>
					<div class="card-body">
						<form action="delete_notes" method="get">
							<div class="mb-3">
								<label>Enter Title</label> <input type="text" name="fullName"
									class="form=control">

							</div>

							<div class="mb-3">
								<label>Enter Description</label>
								<textarea rows="8" cols="" class="form-control"></textarea>

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