<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<title>Books API App</title>
</head>
<body>
    <h1 class="text-left">All books</h1>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Language</th>
                <th>Number of Pages</th>
            </tr>
        </thead>
        <tbody>
             <c:forEach var="book" items="${books}">
                <tr>
             	    <td><c:out value="${book.id}"></c:out></td>
             		<td><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
             		<td><c:out value="${book.language}"></c:out></td>
             		<td><c:out value="${book.numberOfPages}"></c:out></td>
             	</tr>
             </c:forEach>
        </tbody>
    </table>
</body>
</html>



