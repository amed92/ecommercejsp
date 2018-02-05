<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books Store Application</title>
</head>
<body>
    <center>
        <h1>Produit</h1>
        <h2>
            <a href="/new">Add New Product</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">List All Product</a>
             
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Books</h2></caption>
            <tr>
                <th>ID</th>
                <th>Description</th>
                <th>Prix</th>
                <th>stock</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${produit.id}" /></td>
                    <td><c:out value="${produit.descritpion}" /></td>
                    <td><c:out value="${produit.prix}" /></td>
                    <td><c:out value="${produit.stock}" /></td>
                    <td>
                        <a href="/edit?id=<c:out value='${produit.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${produit.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>