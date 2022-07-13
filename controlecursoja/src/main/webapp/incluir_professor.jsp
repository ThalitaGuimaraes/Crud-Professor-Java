<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="incluirProfessor">
    
        <input type="text" name="nomeprofessor" 
               placeholder= "Nome do professor" />
               
        <input type="text" name="celular"
                required
               placeholder="Numero do Celular" />
        <input type="number" name="valorhora" 
               placeholder="Valor da hora" step="0.01"/>
        <input type="submit" value="Editar" />
        <input type="reset" value="Limpar" />
    </form>
</body>
</html>