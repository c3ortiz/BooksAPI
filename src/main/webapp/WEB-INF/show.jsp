<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<title>Books API App</title>
</head>
<body>
    <h1 class="text-left"><c:out value="${title}" /></h1>
    <p class="lead"><b>Description: </b><c:out value="${description}" /> </p>
    <p class="lead"><b>Language: </b><c:out value="${language}" /> </p>
    <p class="lead"><b>Number of pages: </b><c:out value="${pages}" /> </p>
</body>
</html>