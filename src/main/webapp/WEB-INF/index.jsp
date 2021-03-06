<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


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
			<h3>Hello There, Welkommen!</h3>
			
			
			<h1>All Books</h1>
			<table>
	  		   <thead>
	     		 <tr>
	    	       	<th>Title</th>
	            	<th>Description</th>
	           		<th>Language</th>
	           		<th>Number of Pages</th>
	      		 </tr>
	   		   </thead>
	  		   <tbody>
	      	    <c:forEach items="${books}" var="book">
	      	    <tr>
	        	  <td><a href="/books/${book.id}"><c:out value="${book.title}"/></a></td>
	              <td><c:out value="${book.description}"/></td>
	              <td><c:out value="${book.language}"/></td>
	              <td><c:out value="${book.numberOfPages}"/></td>
	     	    </tr>
	           </c:forEach>
	   		  </tbody>
			</table>
			
			<a href="/books/new" class="btn btn-primary">New Book</a>
		</div>
	</div>
</body>
</html>