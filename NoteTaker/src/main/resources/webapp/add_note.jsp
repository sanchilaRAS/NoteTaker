<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes </title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container">
   		<%@include file="navbar.jsp" %>
   		
   		<br>
   		<h1>Please fill your note detail</h1>
   		<br>
   		<!--This is add form -->
   		<form action="SaveNoteServlet" method="post">
			  
			  <div class="form-group">
			    <label for="title">Note Title</label>
			    <input type="text" class="form-control" required name="title" id="title" aria-describedby="emailHelp" placeholder="Enter here">
			  </div>
			  
			  <div class="form-group">
			    <label for="content">Note Content</label>
			    <textarea class="form-control" style="height:200px;" name="content" required id="content" placeholder="Enter your content here"></textarea>
			  </div>
			  
			  <div class="container text-center">
			    <button type="submit" class="btn btn-primary">Add</button>
			  </div>
		</form>
   		
   	</div>

</body>
</html>