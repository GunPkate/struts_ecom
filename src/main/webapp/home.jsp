<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="connection.DBConnection"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<head>
<style>
	.card-grid {
		background: #343a40;
		color:red;
		 grid-template-columns: 1fr 1fr 1fr;
		display: grid;
  		column-gap: 50px;
  		row-gap: 10px;
  		padding-left: 20px;
  		padding-right: 20px;
	}
	
	.card-item {
		background: #eee;
		max-width: 30%;
		border-radius: 1.5rem;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts2 beginner example application</title>
</head>
<body>
	<jsp:include page="/WEB-INF/sharedcomponents/navbar.jsp"/>
	<% out.print(DBConnection.startConnection()); %>
	Home Page
	
	<div class="card-grid">
	
			<div class="card border-dark mb-3 mt-3 " >
			  <div class="card-header">Header</div>
			  <div class="card-body text-dark">
    			<img class="card-img-top" src="..." alt="Card image cap">
			    <h5 class="card-title">Dark card title</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			  </div>
			</div>
			<div class="card border-dark mb-3 mt-3 " >
			  <div class="card-header">Header</div>
			  <div class="card-body text-dark">
    			<img class="card-img-top" src="..." alt="Card image cap">
			    <h5 class="card-title">Dark card title</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			  </div>
			</div>
			<div class="card border-dark mb-3 mt-3 " >
			  <div class="card-header">Header</div>
			  <div class="card-body text-dark">
    			<img class="card-img-top" src="..." alt="Card image cap">
			    <h5 class="card-title">Dark card title</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			  </div>
			</div>
			<div class="card border-dark mb-3 mt-3 " >
			  <div class="card-header">Header</div>
			  <div class="card-body text-dark">
    			<img class="card-img-top" src="..." alt="Card image cap">
			    <h5 class="card-title">Dark card title</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			  </div>
			</div>
			
			
			
	</div>
  </div>
	
</body>
</html>