<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<form action="/casadocodigo/produtos" method="post" enctype="multipart/form-data">
		<div>
			<form:errors path="produto.titulo" />
			<label>Título</label> <input type="text" name="titulo" />
		</div>
		<div>
			<form:errors path="produto.descricao"/>
			<label>Descrição</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<div>
			<form:errors path="produto.paginas"/>
			<label>Páginas</label> <input type="text" name="paginas" />
		</div>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
        <div>
            <label>${tipoPreco}</label>
            <input type="text" name="precos[${status.index}].valor" />
            <input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}" />
        </div>
    </c:forEach>
    	<div>
	        <label>Sumário</label> 
	        <input name="sumario" type="file" />
    	</div>
		<button type="submit">Cadastrar</button>
	</form>

</body>
</html>