<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.cursosja.controlecursoja.model.dao.ProfessorDao" %>
<%@ page import="br.com.cursosja.controlecursoja.model.entidades.Professor" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de professores</title>
</head>
<body>
<h1>Lista de professores</h1>
<table>
<thread>
<tr>
<th>Nome do professor</th>
<th>Celular</th>
<th>Valor da hora</th>
</tr>
</thread>
<tbody>
<%
ProfessorDao daop = new ProfessorDao();
List <Professor> professores = daop.listar("");
for(Professor p:professores) {%>
<tr>
<td><%=p.getNome() %></td>
<td><%=p.getCelular() %></td>
<td><%=p.getValorHora() %></td>
<td><a href="IniciarAlterarProfessor?id=<%=p.getId()%>">
Alterar</a> 
<a href="ExcluirProfessor?id=<%= p.getId() %>">
Excluir</a>
</td>
</tr>
<% } %>
</tbody>
</table>
</body>
</html>

