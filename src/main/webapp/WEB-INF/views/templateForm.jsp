<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sisap® - Apresentação Jogos</title>

	<style type="text/css">
	    <%@include file="../include/bootstrap/css/bootstrap.min.css" %>
	    <%@include file="../include/bootstrap/css/bootstrap-theme.min.css" %>
	    <%@include file="../include/bootstrap/css/bootstrap-custom.css" %>
	    <%@include file="../include/css/estilo.css" %>
	</style>
	<script src='<c:url value="/include/jquery/jquery.min.js" />'></script>
	<script src='<c:url value="/include/bootstrap/js/bootstrap.min.js" />'></script>
	<script src='<c:url value="/include/datatable/jquery.dataTables.min.js" />'></script>
	<script src='<c:url value="/include/jquery/jquery.mask.min.js" />'></script>
	<style type="text/css">
		<%@include file="../include/datatable/jquery.dataTables.min.css" %>
	</style> 
	<script type="text/javascript">
	
		$(document).ready(function(){
			$('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
				event.preventDefault(); 
				event.stopPropagation(); 
				$(this).parent().siblings().removeClass('open');
				$(this).parent().toggleClass('open');
			});
		});	
	</script>
</head>
<body>
	<div class="container">		
		<div class="row top-buffer15 ">
			<div class="col-md-12">		
				<img border="0" src='<c:url  value="/images/logo_sem_inf.png" />' class="img-responsive" title="Sisap® - Apresentação Jogos"></img>				
			</div>
		</div>
		<div class="row top-buffer15 ">
			<div class="col-md-12">		
				<div class="navbar navbar-inverse navbar-static-top marginBottom-0" >
					<div class="navbar-header">
					    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
					        <span class="sr-only"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					    </button>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Desafio</a>
							    <ul class="dropdown-menu ">							      
							      <li><a href="/sisap/perguntaJogoLista">Como foi desenvolvido?</a></li>	
							    </ul>
							</li>	  
						</ul>
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Restrito</a>
								<c:if test="${usuarioLogado != null}">								
								    <ul class="dropdown-menu">
								    	<li><a href="/sisap/jogadorLista">Lista Jogadores</a></li>	
								    	<li><a href="/sisap/pontuacaoLista">Lista Pontuação Final</a></li>
								    </ul>
							    </c:if>
							    <c:if test="${usuarioLogado == null }">								
								    <ul class="dropdown-menu">
								    	<li><a href="/sisap/pontuacaoLista">Logar</a></li>									      		
								    </ul>
							    </c:if>
							</li>	  
						</ul>						
						<ul class="nav navbar-nav ">
							<li class="dropdown">
								<a href="/sisap/logout">Sair</a>			
							</li>	  
						</ul>
					</div>
				</div> 
			</div>
		</div>	
	</div>
</body>
</html>