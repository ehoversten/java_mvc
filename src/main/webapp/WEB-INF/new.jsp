<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
    <script type="text/javascript" src="js/app.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="nav">
				<h1>Java Assignment: MVC</h1>
			</div>
		</div>

		<div class="main_content">
			<h1>New Book</h1>
			<form:form action="/books" method="post" modelAttribute="book">
			    <p>
			        <form:label path="title">Title</form:label>
			        <form:errors path="title"/>
			        <form:input path="title"/>
			    </p>
			    <p>
			        <form:label path="description">Description</form:label>
			        <form:errors path="description"/>
			        <form:textarea path="description"/>
			    </p>
			    <p>
			        <form:label path="language">Language</form:label>
			        <form:errors path="language"/>
			        <form:input path="language"/>
			    </p>
			    <p>
			        <form:label path="numberOfPages">Pages</form:label>
			        <form:errors path="numberOfPages"/>     
			        <form:input type="number" path="numberOfPages"/>
			    </p>    
			    <input type="submit" value="Submit"/>
			</form:form>  
		
		</div>
	</div>
</body>
</html>