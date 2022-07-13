<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.cursosja.controlecursoja.model.entidades.Usuario" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <jsp:include page="verificaSessao.jsp"/>
   <%
      Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
   %>
   <h1>Olá, <%= usuario.getNome() %></h1>

  
   <a href="lista_curso.jsp">Cursos</a>
   <a href="lista_professor.jsp">Professores</a>
   <a href="incluir_curso.jsp">Incluir Matérias</a>
   <a href="incluir_professor.jsp">Incluir Professor</a>
   
   
   
   <a href="incluir_turma.jsp">Incluir Turma</a>
   <a href="LogoutServlet">Sair</a>
</body>
</html>