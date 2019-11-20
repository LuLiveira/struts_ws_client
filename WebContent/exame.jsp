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
	background: #999;
}
</style>
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
		<br /> <br />
		
		<a href="welcome.jsp">
			<button style="color: red; border: 1px solid #000" type="button">Voltar</button>
		</a>
	</div>

</body>
</html>