

//'use strict';

// declare modules
//angular.module('Authentication', []);

var app = angular.module("slingManager", ['ngRoute','ngFileUpload','ngSanitize','ngCookies','Authentication']);



/**
 * Configura la rutas de apliación para renderizar vistas 
 */
app.config(['$routeProvider', function ($routeProvider) {
  $routeProvider
    // Home
    .when("/", {templateUrl: "/apps/demoApp/demoApp/homeContent.html", controller: "slingManagerCtrl"})
    // Pages
    .when("/listContent", {templateUrl: "/demoApp/listContent.html"})
    .when("/uploadContent", {templateUrl: "/demoApp/uploadContent.html", controller: "slingManagerUploadContentCtrl"})
    .when("/home", {templateUrl: "/apps/demoApp/demoApp/homeContent.html", controller: "slingManagerCtrl"});
    // else 404
    //.otherwise("/404", {templateUrl: "partials/404.html", controller: "PageCtrl"});
}]);




/*Controller para el manejo de subidas de ficheros*/

app.controller('slingManagerUploadContentCtrl', function($scope, Upload, $log, $http, $window, $sanitize, AuthenticationService) {
	$scope.actualPage='Upload content';
	var files;
	$scope.files = files;
	AuthenticationService.ClearCredentials();
	$scope.username='admin';
	$scope.password='admin';
	
	
    $scope.login = function () {
        $scope.dataLoading = true;
        AuthenticationService.Login($scope.username, $scope.password, function (response) {
            if (response.success) {
                AuthenticationService.SetCredentials($scope.username, $scope.password);
                //$location.path('/');
            } else {
                $scope.error = response.message;
                $scope.dataLoading = false;
            }
        });

    };
    
    $scope.login();
	 
	/*Transforma el control file en un tipo del plugin fileInput*/
	angular.element(document).ready(function () {
	        $("#controlFiles").fileinput({
	            showUpload: false,
	            maxFileCount: 10,
	            mainClass: "input-group-lg"
	        });
	    });
	 
	 

	 /*Puebla el objeto de ficheros con el contenido del control file
	 / * Param: files*/

	 $scope.populateFiles = function (files) {
	    	$scope.files = files;
	    	
	        /*if (files && files.length) {
	          for (var i = 0; i < files.length; i++) {
	        	  
	            var file = files[i];

	          } 
	        }*/
	      };
	      
	   $scope.uploadFiles = function () {
	  	     var files = $scope.files;
	    	  if (files && files.length) {
		          for (var i = 0; i < files.length; i++) {  
		        	  var file = files[i];
		        	  $scope.uploadFilesByForm(file);       	  
		          }
		        
	    	  }
	     };
	     
	     $scope.uploadAllFilesByForm = function(){
	    	 $('#myModal').modal() ;
	    	  var formElement = document.forms[0];
	    	  var fd = new FormData(formElement);
	          var uploadUrl = '/content/demoApp/repositorio';
	          $http.post(uploadUrl, fd, {
	              transformRequest: angular.identity,
	              headers: {'Content-Type': undefined}
	          })
	          .success(function(){
	        	  $window.location.reload();	  	        	 
	          })
	          .error(function(response,status){
	        	  alert('Se ha producido un error en la subida de los documentos - código de estado:' + status + " ,mensaje de estado:" + response.error.message);
	          });
	      };
	      	      
	      $scope.uploadFilesByForm = function(file){
	    	  var formElement = document.forms[0];
	    	  var fd = new FormData(formElement);
	          var uploadUrl = '/content/demoApp/repositorio';
	          $http.post(uploadUrl, fd, {
	              transformRequest: angular.identity,
	              headers: {'Content-Type': undefined}
	          })
	          .success(function(){
	        	   
	          })
	          .error(function(response,status){
	        	  alert('Se ha producido un error en la subida del documeto:' + file.name + " ,código de estado:" + status + " ,mensaje de estado:" + response.error.message);
	          });
	      };

});





app.controller('slingManagerListContentCtrl', function($scope, $log, $http, $window, AuthenticationService) {

	
				AuthenticationService.ClearCredentials();
				$scope.username='admin';
				$scope.password='admin';
				
			    $scope.login = function () {
			        $scope.dataLoading = true;
			        AuthenticationService.Login($scope.username, $scope.password, function (response) {
			            if (response.success) {
			                AuthenticationService.SetCredentials($scope.username, $scope.password);
			                //$location.path('/');
			            } else {
			                $scope.error = response.message;
			                $scope.dataLoading = false;
			            }
			        });
			
			    };
			    
			    $scope.login();
			
		     /*End Authentication TODO:_Extract */
	
	        var queryXpath = "/jcr:root/content/demoApp/repositorio//*[@jcr:primaryType = 'nt:file']";
	        var querySql = "select * from nt:base where jcr:primaryType='nt:file'";
	        
	        var queryTypeXpath = "xpath";
	        var queryTypeSql = "sql";
			//var query = "%2Fjcr:root%2Fcontent%2FdemoApp%2Frepositorio%2F%2F*[@jcr:primaryType = 'nt:file']";
			//var query = "//*[@sling:resourceType = 'mymoney:bill']";
	        $scope.files = [];

			$scope.getFiles = function() {
		        $http({
		        	method : 'GET',
		        	url : "/content.query.infinity.json?queryType=" + queryTypeXpath + "&statement=" + queryXpath
		        })
		        .success(function(data, status) {
		        	$scope.files = data;
		        });
		    };
		    //Aqui es donde se llama para que se ejecute la función
		    $scope.files = $scope.getFiles();
		    
		    
		    $scope.deleteContent = function(path) {
		        //var Indata = {':operation':'delete'};
		        $http({
		        	method : 'DELETE',
		        	url : path
		        	//params: Indata
		        })
		        .success(function(data, status) {
		        	console.log(data);
		        	$window.location.reload();
		        });
		    };
		    
		    $scope.signContent = function(path) {
		    	alert($('#modal-sign'));
		    	$('#modal-sign').data('bs.modal').options.remote = "http://localhost:8080/apps/demoApp/modal/hello.html";
		        
		    };
		   
});

