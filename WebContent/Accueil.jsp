<!DOCTYPE html>


<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>Home</title>
</head>
<body>

<h1>Accueil</h1>  
<a href="login.jsp">Login</a>|  
<a href="inscription.jsp">Inscription</a>

<%-- <c:if test=${requestScope.connected != null && requestScope.connected = 1 } >
 --%>
<form class="form-inline" action="produit.jsp">
  <label class="mr-sm-2" for="inlineFormCustomSelect">Preference</label>
  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect">
    <option selected>Choose...</option>
    <option value="">Produit</option>
    <option value="">User</option>
    <option value="">Three</option>
  </select>

  <label class="custom-control custom-checkbox mb-2 mr-sm-2 mb-sm-0">
    <input type="checkbox" class="custom-control-input">
    <span class="custom-control-indicator"></span>
    <span class="custom-control-description">Remember my preference</span>
  </label>

  <button type="submit" class="btn btn-primary">Submit</button>
</form>

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