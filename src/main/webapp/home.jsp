<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="connection.DBConnection"  %>
<%@page import="action.productAction.LoadAllProduct"  %>
<%@page import="model.Product"  %>
<%@ page import="java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<head>
<style>
	.card-grid {
		background: #343a40;
		 grid-template-columns: 1fr 1fr 1fr;
		display: grid;
  		column-gap: 50px;
  		row-gap: 10px;
  		padding-left: 20px;
  		padding-right: 20px;
	}
	
	.card-item {
		background: #7BD3EA;
		max-width: 180px;
		border-radius: 1.5rem;
		text-align: center;
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
		<% 
			List<Product> list = LoadAllProduct.execute();
			for(Product p: list){ %>
				<div class="card border-dark mb-3 mt-3 " >
				  <div class="card-header"> <h3><%= p.getName() %></h3> </div>
				  <div class="card-body text-dark">
	    			<img class="card-img-top" src= "<%= p.getImage() %>"  alt="Card image cap">
				    <h5 class="card-title card-item mt-3 pt-2 pb-2"> <%= p.getCategory() %></h5>
				    <p class="card-text">  </p>
				  </div>
				</div>
			<%}
		%>		
		<% 
			List<Product> list2 = LoadAllProduct.execute();
			for(Product p: list2){ %>
				<div class="card border-dark mb-3 mt-3 " >
				  <div class="card-header"> <%= p.getName() %> </div>
				  <div class="card-body text-dark">
	    			<img class="card-img-top" src= "<%= p.getImage() %>"  alt="Card image cap">
				    <h5 class="card-title"> <%= p.getCategory() %></h5>
				    <p class="card-text">  </p>
				  </div>
				</div>
			<%}
		%>		
	</div>

	
</body>
</html>