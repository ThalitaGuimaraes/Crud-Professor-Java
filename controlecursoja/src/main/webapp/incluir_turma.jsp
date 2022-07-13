<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.cursosja.controlecursoja.model.dao.CursoDao" %>
<%@ page import="br.com.cursosja.controlecursoja.model.entidades.Curso" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form method="post" action="IncluirTurma">
    
        Curso:
        <select name="curso" required>
        <%
            CursoDao dao = new CursoDao();
        
            List<Curso> lista = dao.listar("");
            
            for(Curso c: lista) {
        %>    	
            
            <option value="<%= c.getId() %>"><%= c.getNome() %></option>
        
        <% } %>
        </select>
        
        Professor:
        <select name="professor" required>
            <option value="1">Luis</option>
        </select>
        Data Início
        <input type="date" name="inicio"
               required />
               
        Data Término       
        <input type="date" name="fim"
               required />
        <input type="submit" value="Gravar" />       
    </form>           
                     
</body>
</html>