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
			<form class="form-horizontal" method="post" action="/jogadores/form">
		    	<div class="panel panel-default">
		    		<div class="panel-heading">
		    			<div class="clearfix">
			   				<h1 class="panel-title titulo-panel">Cadastro de jogadores </h1>
			   				<a class="btn btn-link link-panel" href="/jogadores">Voltar para pesquisa</a>
			   			</div>
		    		</div>
		    		
		    		<div class="panel-body">
		    			<input type="hidden" value="${jogador.id}" />
		    		
						<div class="form-group">
							<label for="nome" class="col-sm-2 control-label">Nome</label>
							<div class="col-sm-4"> 
								<input type="text" class="form-control" id="nome" 
									name="nome" value="${jogador.nome}" />
							</div>
						</div>
						<div class="form-group">
							<label for="telefone" class="col-sm-2 control-label">Telefone</label>
							<div class="col-sm-2">   
								<input type="text" class="form-control" id="telefone" 
									name="telefone" value="${jogador.telefone}" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">Salvar</button>
							</div>
						</div>
					</div>
		    	</div>
	    	</form>
		</div>
		
		<script type="text/javascript" src="/resources/js/jquery.js"></script>
		<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
	</body>
</html>