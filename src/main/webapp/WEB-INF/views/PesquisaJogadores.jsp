<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/resources/css/style.css" />
</head>
	
<body>
	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/jogadores">Rachinha</a>
			</div>
		</div>
	</nav>

	<div class="container">
		<form class="form-horizontal" method="post" action="/jogadores">
		    <div class="panel panel-default">
		    	<div class="panel-heading">
		    		<div class="clearfix">
			   			<h1 class="panel-title titulo-panel">Pesquisa de jogadores</h1>
			   			<a class="btn btn-link link-panel" href="/jogadores/form">Novo jogador</a>
			   		</div>
		    	</div>
		    		
		    	<div class="panel-body">
		    		<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th class="text-center col-md-1">#</th>
								<th>Nome</th>
								<th class="text-center col-md-3">Telefone</th>
								<th class="text-center col-md-1"></th>
							</tr>
						</thead>
					
						<tbody>
							<c:forEach var="jogador" items="${jogadores}">
								<tr>
					   				<td class="text-center">${jogador.id}</td>
					   				<td>${jogador.nome}</td>
					   				<td class="text-center">${jogador.telefone}</td>
					   				<td class="text-center">
					   					<c:url value="/jogadores/${jogador.id}" var="editar" />
					   					<a class="btn btn-link btn-xs" href="${editar}"
					   						title="Editar" rel="tooltip" data-placement="top">
					   						<span class="glyphicon glyphicon-pencil"></span>
					   					</a>
					   						
					   					<a class="btn btn-link btn-xs"
					   						title="Excluir" rel="tooltip" data-placement="top">
					   						<span class="glyphicon glyphicon-remove"></span>
					   					</a>
					   				</td>
					   			</tr>
				   			</c:forEach>
							
							<c:if test="${empty jogadores}">
								<tr>
									<td colspan="4">Nenhum jogador foi encontrado</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
		    </div>
	    </form>
	</div>
		
	<script type="text/javascript" src="/resources/js/jquery.js"></script>
	<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/resources/js/sistema.js"></script>
</body>
</html>