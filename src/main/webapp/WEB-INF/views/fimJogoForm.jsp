<%@ include file="templateForm.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">
	<%@include file="../include/bootstrap/css/jquery-ui-1.10.4.custom.min.css" %>
</style>
<script type="text/javascript">
	<%@include file="../include/jquery/jquery-ui.min.js" %>
</script>
	
	
	<body>
		<div class="container">
			<form id="idRespostaJogador" name="respostaJogador" method="post" action="">	
				<div class="row top-buffer25">	
					<div class="col-md-12">
						<legend></legend>
					</div>
				</div>
				<div class="row top-buffer15">
					<div class="col-md-10 col-md-offset-1">
						<span class="titulo">Obrigado!</span>
					</div>
				</div>	
				<div class="row top-buffer15">
					<div class="col-md-10 col-md-offset-1">
						<span class="titulo">Aguarde o resultado final</span>
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