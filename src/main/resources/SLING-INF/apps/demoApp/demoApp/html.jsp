<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
	<!-- Meta-Information -->
	<title>Sling Manager</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="description" content="Slin Repositity Manager">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/apps/demoApp/static/css/bootstrap.min.css">
	<!--fileinput-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/apps/demoApp/static/css/fileinput.min.css">
</head>
<body ng-app="slingManager">

	<div ng-include='"${pageContext.request.contextPath}/apps/demoApp/abstract/menu.html"'></div>
	

	<div>
   		You're in: <code>{{$scope.actualPage}}</code>
	</div>
	<div ng-view>
		<div ng-include='"${pageContext.request.contextPath}/apps/demoApp/demoApp/homeContent.html"'></div>
	<div>

	<div ng-include='"${pageContext.request.contextPath}/apps/demoApp/abstract/footer.html"'></div>

	<!--angular-->

		<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/angular.min.js"></script>
			
		<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/angular-route.min.js"></script>
			
		<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/angular-sanitize.min.js"></script>
			
		<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/angular-cookies.min.js"></script>

	<!--jquery-->

		<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/jquery/jquery-1.11.3.min.js"></script>

	<!--bootstrap-->
	<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/bootstrap/bootstrap.min.js"></script>

	<!--fileinput-->

	<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/fileinput/fileinput.min.js"></script>
	<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/fileinput/i18n/fileinput_locale_${pageContext.response.locale.language}.js" type="text/javascript"></script>
		
	<!-- ng-file-upload -->
	<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/plugins/ng-fileupload/ng-file-upload.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/plugins/ng-fileupload/ng-file-upload-shim.min.js" type="text/javascript"></script>	
	
	<!-- App Files -->
	<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/app/services.js"></script>
	<script src="${pageContext.request.contextPath}/apps/demoApp/static/js/angular/app/slingManager.js"></script>


</body>
</html>