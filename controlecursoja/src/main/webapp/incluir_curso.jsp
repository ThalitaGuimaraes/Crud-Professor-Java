<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <jsp:include page="verificaSessao.jsp"/>
    
    <form method="post" action="incluirCurso">
    
        <input type="text" name="nomecurso" 
               placeholder= "Nome do curso" />
                                         
        <input type="number" name="mensalidade"
               step="0.01" required
               placeholder="Valor da Mensalidade" />
        <input type="submit" value="Editar" />
        <input type="reset" value="Limpar" />
    </form>
</body>
</html>