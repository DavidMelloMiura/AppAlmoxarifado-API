<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmação de Exclusão</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
</head>
<body>
<div class="container">
		<h2>Deseja realmente, remover esta entrada</h2>

<%--
	 --%>

		<div class="alert alert-danger">
			<div>Entrada: ${entrada.produto.nome}</div>
		</div>

		<form action="/entrada/remover/" method="post">

			<div class="mb-3">
				<input type="hidden" name="id" value="${entrada.id}" />
				<div>
					<a class="btn btn-warning" href="/entrada/lista">Não, retornar para entradas</a>
					<button type="submit" class="btn btn-danger">Sim, Remover</button>
				</div>
			</div>
		</form>

	</div>

</body>
</html>