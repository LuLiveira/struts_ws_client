<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Exames</title>
	</head>
	<body>
	
		<h1>Informe o exame que deseja buscar:</h1>
			
		<s:actionerror/>
		<s:form action="loadExame.action" method="post">
			<s:textfield label="Exame" name="id" />			
			<s:submit cssClass="find" value="Buscar" />
		</s:form>
	
	</body>
</html>