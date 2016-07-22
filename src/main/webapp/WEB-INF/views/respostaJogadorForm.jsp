<%@ include file="templateForm.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">
	<%@include file="../include/bootstrap/css/jquery-ui-1.10.4.custom.min.css" %>
</style>
<script type="text/javascript">
	<%@include file="../include/jquery/jquery-ui.min.js" %>
</script>
	
	<script type="text/javascript">
		var oTable;	
		
		function validaCamposSalvar(){
			 var cont = 0;
		     $(".cpObrigatorio").each(function(){
		    	 
		         if($(this).val().trim() == ""){
		                 $(this).css({"border" : "1px solid #F00", "padding": "2px"});
		                 cont++;
		             }
		     });
		     if(cont == 0){
		    	 return true;
		     }
		     return false;
		}
		
		$(document).ready(function(){
			
			$('.idade').mask('99');
		
			$("#idNovo").click(function(){
				$('.inputInsert').val('');			
			});
			
			$("#idSalvar").click(function(){
				if(validaCamposSalvar()){
					$('#idRespostaJogador').prop('action',"/sisap/salvarRespostaJogo");
			    	$('#idRespostaJogador').submit();
				}		    	
		    }); 
				
			
		});		
	</script>
	
	<body>
		<div class="container">
			<form id="idRespostaJogador" name="respostaJogador" method="post" action="">	
				
				<div class="row top-buffer15">
					<div class="col-md-6 col-md-offset-3">
						<legend class="titulo">Como foi desenvolvido esse jogo?</legend>
					</div>
				</div>			
				<div class="row top-buffer15">
					<div class="col-md-6 col-md-offset-3">
						<img border="0" src='<c:url  value="/images/super_robot.jpg"  />' class="img-responsive img-thumbnail" title="Super Robot Battle"></img>
					</div>
				</div>	
				<div class="row top-buffer25">
					<div class="col-md-5 col-md-offset-3">
						<div class="input-group">
							<span class="input-group-addon input-fixed-width75">Nome</span>
							<input type="text" name="nmJogador" class="form-control inputInsert cpObrigatorio" maxlength="100">
							
						</div>						
					</div>	
				</div>	
				<div class="row top-buffer25">
					<div class="col-md-2 col-md-offset-3">
						<div class="input-group">
							<span class="input-group-addon input-fixed-width75">Idade</span>
							<input type="text" name="idadeJogador" class="form-control inputInsert idade cpObrigatorio" maxlength="2" size="2">
						</div>						
					</div>	
				</div>				
				<c:forEach items="${perguntaLista}" var="pergunta">					
					<div class="row top-buffer25">
						<div class="col-md-5 col-md-offset-3 ">
							<div class="input-group">
								<span class="input-group-addon input-fixed-width75 ">${pergunta.nmPergunta}</span>
								<select class="form-control inputInsert cpObrigatorio" name="cdRespostaLista" >
									<option value="">Selecione</option>	
									<c:forEach items="${pergunta.respostaLista}" var="resposta">	
										<option value="${resposta.cdResposta}">${resposta.nmResposta}</option>	
									</c:forEach>
								</select>
							</div>															
						</div>
					</div>					
				</c:forEach>
				<div class="row top-buffer15">
					<div class="col-md-1 col-md-offset-7">							
						<input type="button" name="salvar" id="idSalvar" value="Salvar" class="btn btn-sm btn-oldstyle"/>						
					</div>	
				</div>	
				<div class="row top-buffer25">	
					<div class="col-md-12">
						<legend></legend>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>