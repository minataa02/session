<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Etape 1: creer un formulaire html -->
	<form action="ToDoList.jsp" methode="Post">
		<label for="Id1">Siasir un nouveau item: </label>
		<input type="text" name="monItem"  id="Id1"/>
		<input type="submit" value="Soumettre"/>
	</form>
	<br>
	<!-- <p> L'item saisi est: <%=request.getParameter("monItem") %></p> -->
	
	<!-- Etape 2: Ajouter un item a la liste todo -->
	
	<%
		List<String> items = (List<String>)session.getAttribute("monToDoList");
		if(items==null){
			items=new ArrayList<String>();
			session.setAttribute("monToDoList",items);
		}
		String itemSaisi= request.getParameter("monItem");
		if(itemSaisi != null){
			items.add(itemSaisi);
		}
	%>
	
	<!-- Etape 3 : Afficher tous les items de la ToDoList a partir de l'objet session -->
	<hr>
	<h2>Item de la liste de ToDoList: </h2>
	<ol>
		<%
			for(String item : items){
				out.println("<li>"+ item +"</li>");
			}
		%>
	</ol>
	
	<!-- ceci est un commentaire depuis github -->
</body>
</html>
