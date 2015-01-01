<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserir</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/style.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.remodal.css" />

<link rel="stylesheet" type="text/css" href="./resources/Button/css/component.css" />

<style type="text/css">
	body{
	background-color:#fff;
	}
</style>
</head>
<body id="content">
		<jsp:include page="./WEB-INF/templates/navbar.jsp" />
		<jsp:include page="./WEB-INF/templates/sidemenu.jsp" />
		<button class="menu-button" id="open-button">Open Menu</button>
			
		<div class="container">
		
				<p>
				<a href="#modal">
					<button class="btn btn-3 btn-3e icon-arrow-right">Registrar Novo Gasto</button>
				</a>
				</p>
		
		</div>
		
	<div class="remodal" data-remodal-id="modal">
    		<h5>Inserir Novo Gasto</h5>
    		<form action="CadastrarGasto" method="post" class="formulario" id="formulario">
				<input class="input" type="text" name="descricao" placeholder="Descrição do gasto..." required/>
				<br/>
				<input id="valor" class="input" type="text" name="valor" placeholder="Valor gasto..." required/>
				<br/><br/><br/>
				<button class="confirm" type="submit">Cadastrar</button>
				<button class="remodal-cancel" type="submit">Cancelar</button>
			</form>
	</div>

</body>
<script type="text/javascript" charset="utf-8">
$(document).ready(function() {
	
    content = document.querySelector( "#content" ),
	openbtn = document.querySelector( "#open-button" ),
	closebtn = document.querySelector( "#close-button" ),
	
	sideMenu(content, openbtn, closebtn);
} );

</script>

<script src="./resources/bootstrap/js/jquery.min.js"></script>
<script src="./resources/bootstrap/js/jquery.remodal.js"></script>
<script src="./resources/angular/angular.js"></script>


<script type="text/javascript">
	valor = $("#valor").val();
	function verifica(){
		var number = $("#valor").val();
		
		if(angular.isNumber(number)){
			alert($("#valor").val());
		}

		if($.isNumeric(number)){
			alert($("#valor").val() + " é numero");
		}
	}
	
	$( "form" ).submit(function ( event ){
		if($.isNumeric(valor)){
			alert("é numero pode submeter");
			return;
			}
		})
		
		function modal(){
		
		}
	
</script>
</html>