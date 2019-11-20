<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exame número <s:property value="id" /></title>

<style>
.container {
	text-align: center;
	background: #C8C8C8;
	margin-top: 40px;
	padding-bottom: 10px;
}
</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">

		<h1>Confira abaixo as informações do seu exame:</h1>

		<s:text name="label.nome" />
		<br /> <br />

		<s:text name="label.idade" />
		<br /> <br />

		<s:text name="label.email" />
		<br /> <br />

		<s:text name="label.cpf" />
		<br /> <br />

		<s:text name="label.telefone" />
		<br /> <br />

		<s:text name="label.data">
			<s:param name="value" value="exame.data" />
		</s:text>
		<br /> <br />

		<s:text name="label.descricao" />
		<br /> <br /> <a href="welcome.jsp">
			<button class="btn btn-primary" type="button">Voltar</button>
		</a>
	</div>

</body>
</html>