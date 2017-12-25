$(function() {
	$('[rel="tooltip"]').tooltip();
});

$('#dialogoExclusao').on('shown.bs.modal', function(event) {
	
	var botao = $(event.relatedTarget);
	var jogadorID = botao.data('jogador-id');
	var jogadorNome = botao.data('jogador-nome');
	
	var modal = $(this);
	var mensagem = modal.find('.modal-body span');
	mensagem.html('Deseja excluir o jogador <strong>' + jogadorNome + '</strong>?');
	
	var form = modal.find('form');
	var acao = form.data('url-base');
	
	form.attr('action', acao + '/' + jogadorID);

});


