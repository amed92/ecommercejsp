<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Books Store Application</title>
</head>
<body>
    <center>
        <h1>Utilisateur</h1>
        <h2>
            <a href="/new">Add New User</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">List All User</a>
             
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of User</h2></caption>
            <tr>
                <th>ID</th>
                <th>Login</th>
                <th>Password</th>
            </tr>
            <c:forEach var="book" items="${listUtilisateur}">
                <tr>
                    <td><c:out value="${utilisateur.id}" /></td>
                    <td><c:out value="${utilisateur.login}" /></td>
                    <td><c:out value="${utilisateur.pwd}" /></td>
                    <td>
                        <a href="/edit?id=<c:out value='${utilisateur.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${utilisateur.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>