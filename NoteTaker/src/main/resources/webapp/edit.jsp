

<%@page import="com.helper.*" %>
<%@page import="org.hibernate.* " %>

<%@page import="com.entities.* " %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all_js_css.jsp" %>

<title>Insert title here</title>
</head>
<body>

	<div class="container">
   		<%@include file="navbar.jsp" %>
   		
   		<br>
   		<h1>Edit your note</h1>
   		<br>
   	
			
   	  <%  int noteId=Integer.parseInt(request.getParameter("note_id").trim());
   	  
   		Session s=FactoryProvider.getFactory().openSession();
   		
		Note note=(Note)s.get(Note.class, noteId);
		
		
   		%>
   		<!--This is add form -->
   		<form action="Updateservlet" method="post">
			  
			  <input value="<%=note.getId() %>" name="note_id" type="hidden"/>
			  
			  <div class="form-group">
			    <label for="title">Note Title</label>
			    <input type="text" class="form-control" required 
			    name="title" id="title" value="<%= note.getTitle() %>"  placeholder="Enter here">
			  </div>
			  
			  <div class="form-group">
			    <label for="content">Note Content</label>
			    <textarea class="form-control" style="height:200px;" name="content" 
			    required id="content" placeholder="Enter your content here"> <%=note.getContent() %></textarea>
			  </div>
			  
			  <div class="container text-center">
			    <button type="submit" class="btn btn-success">Save your note</button>
			  </div>
		</form>
   		
   	</div>
   	
</body>
</html>