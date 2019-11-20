<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exames</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<style>
	body {
		background: #C8C8C8;
	}
	.form-content {
		width: 300px;
		margin: auto;
	}
	.content {
		text-align: center;
		margin-top: 40px;
	}
	.input-background {
		color: #999;
	}
	ul {
		list-style: none;
	}
	.errorMessage {
		color:red;
	}
</style>
</head>
<body>
	<div class="content">

		<h1>Informe o exame que deseja buscar:</h1>

		<s:actionerror />
		<s:form cssClass="form-content" action="loadExame.action" method="post">
			<s:textfield cssClass="form-control input-background" label="Exame" name="id" />
			<s:submit cssClass="btn btn-success" value="Buscar" />
		</s:form>
	</div>

</body>
</html>