<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="layout" %>

<layout:pageTemplate titulo="Pesquisa de jogadores">
	<c:if test="${not empty mensagem}">
		<div class="alert alert-success">
			<span>${mensagem}</span>
		</div>
	</c:if>
	
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
					   						
					   			<a class="btn btn-link btn-xs" data-toggle="modal" data-target="#dialogoExclusao"
					   				data-jogador-id="${jogador.id}" data-jogador-nome="${jogador.nome}"
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

	<div class="modal fade" id="dialogoExclusao" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<form method="POST" data-url-base="/jogadores" >
				<input type="hidden" name="_method" value="DELETE">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">Confirmação</h4>
					</div>
					<div class="modal-body">
						<span>Deseja realmente excluir o jogador?</span>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						<button type="submit" class="btn btn-primary">Excluir</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</layout:pageTemplate>
