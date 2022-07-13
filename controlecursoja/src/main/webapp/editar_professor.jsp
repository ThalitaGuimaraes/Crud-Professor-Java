<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.cursosja.controlecursoja.model.entidades.Professor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Professor professor = (Professor) request.getAttribute("professor"); %>
<form method="post" action="AlterarProfessor">
 
 <h1>Professor: </h1>
 <input type="hidden" name="idprofessor" value= "<%= professor.getId() %>" />
 <input type="text" name="nomeprofessor" value= "<%= professor.getNome() %> " />
 <input type="text" name="celular" value= "<%= professor.getCelular() %>" />
 <input type="text" name="valorhora" value= "<%= professor.getValorHora() %>" />
 <input type="submit" value="Editar" />
 <input type="reset" value="Limpar" />
</form>
</body>
</html>