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
				
			
		});		
	</script>
	
	<body>
		<div class="container">
			<form id="idRespostaJogador" name="respostaJogador" method="post" action="">	
				
				<div class="row top-buffer15">
					<div class="col-md-6 col-md-offset-3">
						<legend class="titulo">Lista de Jogadores</legend>
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
								  	<th class="display-th">Jogador</th>	
								  	<th class="display-th">Idade</th>	
								  </tr>
							 </thead>
							 <tbody>  
								  <c:forEach items="${jogadorLista}" var="jogador">
								    <tr>
								    	<td><a href="/sisap/carregarPontuacaoDetalhe?cdJogador=${jogador.cdJogador}">${jogador.nmJogador}</a></td>	
										<td class="text-center">${jogador.idadeJogador} - anos</td>																		
								    </tr>
								  </c:forEach>							  
							 </tbody>	
						  </table>							
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