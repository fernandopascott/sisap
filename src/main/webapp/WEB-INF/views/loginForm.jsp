<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Sisfin - Controle Financeiro</title>
		<style type="text/css">
		    <%@include file="../include/bootstrap/css/bootstrap.min.css" %>
		    <%@include file="../include/bootstrap/css/bootstrap-theme.min.css" %>
		    <%@include file="../include/bootstrap/css/bootstrap-custom.css" %>
		    <%@include file="../include/css/estilo.css" %>
		</style>
		<script src='<c:url value="/include/jquery/jquery.min.js" />'></script>
		<script src='<c:url value="/include/bootstrap/js/bootstrap.min.js" />'></script>
	</head>
	<body>	
		<div class="container">
			<form class="form-signin" name="usuario" action="efetuaLogin" method="post">
				<div class="row top-buffer15 ">
					<div class="col-md-4 col-md-offset-4 text-center">		
						<img border="0" src='<c:url  value="/images/logo_sem_inf.png" />' class="img-responsive" title="Sisap® - Apresentação Jogos"></img>				
					</div>
				</div>
				<div class="row top-buffer25">
					<div class="col-md-4 col-md-offset-4 text-center">						
						<label for="inputEmail" class="sr-only">Usuário</label>
						<input type="text" name="nmUsuario" id="inputEmail" class="form-control" placeholder="Usuário" required="" autofocus="">
						<label for="inputPassword" class="sr-only">Senha</label>
						<input type="password" name="pwUsuario" id="inputPassword" class="form-control" placeholder="Senha" required="">
						<button class="btn btn-lg btn-primary btn-block" type="submit">Acessar</button>	
					</div>
				</div>				
				<c:if test="${msgErrorPasword != null}">
					<div class="row top-buffer25">
						<div class="col-md-4 col-md-offset-4 text-center">						
							<span>${msgErrorPasword}</span>
						</div>
					</div>	
				</c:if>			
			</form>		
		</div>
	</body>
</html>