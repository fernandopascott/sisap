<%@ include file="templateForm.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">
	<%@include file="../include/bootstrap/css/jquery-ui-1.10.4.custom.min.css" %>
</style>
<script type="text/javascript">
	<%@include file="../include/jquery/jquery-ui.min.js" %>
</script>
	
	<script type="text/javascript">
		
		$(document).ready(function(){
			
			oTable = $("#idTableLista").DataTable({});
			
			$("#idVoltar").click(function(){
				parent.history.back();
				return false;
			});
			
		});		
	</script>
	
	<body>
		<div class="container">
			<form id="idPontuacaoDetalhe" name="respostaJogador" method="post" action="">	
				
				<div class="row top-buffer15">
					<div class="col-md-6 col-md-offset-3">
						<legend class="titulo">Detalhe Pontuação - Jogador ${jogador.nmJogador}</legend>
					</div>
				</div>			
				<div class="row top-buffer15">
					<div class="col-md-6 col-md-offset-3">
						<img border="0" src='<c:url  value="/images/super_robot.jpg"  />' class="img-responsive img-thumbnail" title="Super Robot Battle"></img>
					</div>
				</div>	
				<div class="row top-buffer50">
					<div class="col-md-6 col-md-offset-3">
						 <table id="idTableLista" class="table compact table-condensed table-striped" >
							 <thead>
								  <tr>
								  	<th class="display-th">Pergunta</th>								    
								    <th class="display-th">Resposta</th>
								    <th class="display-th">Status</th>
								  </tr>
							 </thead>
							 <tbody>  
								  <c:forEach items="${jogador.respostaJogadorLista}" var="respostaJogador">
								    <tr>
								    	<td>${respostaJogador.resposta.pergunta.nmPergunta}</td>
								    	<td>${respostaJogador.resposta.nmResposta}</td>	
										<td class="text-center">
											<c:if test="${respostaJogador.resposta.statusResposta eq true}">
								   				Certo
								   			</c:if>
								   			<c:if test="${respostaJogador.resposta.statusResposta eq false}">
								   				Errado
								   			</c:if>
										</td>										
								    </tr>
								  </c:forEach>							  
							 </tbody>	
						  </table>							
					</div>	
				</div>
				<div class="row top-buffer15">
					<div class="col-md-1 col-md-offset-8 text-right">						
						<input type="button" name="voltar" id="idVoltar" value="Voltar" class="btn btn-sm btn-oldstyle"/>
					</div>	
				</div>	
				<div class="row top-buffer25">		
						<legend></legend>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>