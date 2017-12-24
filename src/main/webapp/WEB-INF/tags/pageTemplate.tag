<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="titulo" required="true" %>
<%@ attribute name="extra" fragment="true" %>

<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/resources/css/style.css" />
		
		<title>${titulo}</title>
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
			<jsp:doBody />
		</div>
		
		<script type="text/javascript" src="/resources/js/jquery.js"></script>
		<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/resources/js/sistema.js"></script>
		
		<jsp:invoke fragment="extra" />
	</body>
</html>