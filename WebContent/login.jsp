<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<?xml version="1.0" encoding="UTF-8" ?>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page import="java.util.List"%>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
		integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
		crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
</head>
<body>

	<div class="container py-5">
		<div class="row">
			<div class="col-md-12">
				<h2 class="text-center text-white mb-4">Ecommercejsp login</h2>
				<div class="row">
					<div class="col-md-6 mx-auto">
						<span class="anchor" id="formLogin"></span>

						<!-- form card login -->
						<div class="card rounded-0">
							<div class="card-header">

								<div style="color: red">
									<%-- <c:if
										test="${requestScope.connected != null && requestScope.connected.equals("0")}">
										<c:out value="${requestScope.errorMessage}" />
									</c:if> --%>
								</div>

								<h3 class="mb-0">Login</h3>
							</div>
							<div class="card-body">
								<form action="LoginServlet" class="form" method="post" role="form" autocomplete="off"
									id="formLogin">
									<div class="form-group">
										<label for="uname1">Username</label>
										<input
											type="text"
											class="form-control form-control-lg rounded-0"
											name="login"
											id="uname1"
											required
										>
									</div>
									<div class="form-group">
										<label>Password</label>
										<input
											type="password"
											class="form-control form-control-lg rounded-0"
											name="password"
											id="pwd1"
											autocomplete="new-password"
											required
										>
									</div>
									<div></div>
									<button type="submit" class="btn btn-success btn-lg float-right">Login</button>
								</form>
							</div>
							<!--/card-block-->
						</div>
						<!-- /form card login -->

					</div>


				</div>
				<!--/row-->

			</div>
			<!--/col-->
		</div>
		<!--/row-->
	</div>
	<!--/container-->


	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
		integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
		integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
		crossorigin="anonymous"></script>
</body>
</html>