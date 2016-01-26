<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0" %>
<sling:defineObjects/>


<div class="jumbotron" >
	<div class="container">
		
		<form  ng-app="slingManager" ng-controller="slingManagerUploadContentCtrl" class="text-center" action="/content/demoApp/repositorio" method="post" enctype="multipart/form-data">

<!-- 			    <label class="control-label">Seleccionar fichero</label>
			    <input id="input-6"  name="*"  placeholder="Fichero/s" type="file" multiple class="file-loading" ng-file-select="onFileSelect($files)">
				<input name=":redirect" value="/demoApp/demoApp.html#/uploadContent" type="hidden"/>
				<input type="hidden" name="*@TypeHint" value="nt:file" />
				<button type="submit" class="btn btn-default">Submit</button>
		
		<input type="file" ng-file-select="onFileSelect($files)" ng-model="files"/>
		<button ng-click="uploadFiles($files)" type="button" class="btn btn-default glyphicon glyphicon-upload"> Upload</button>
		<div class="button" ngf-select ng-model="files" ngf-multiple="true">Select</div> -->
		
		
		<!-- <button ngf-select="uploadFiles($files)" multiple 
	            accept="image/*">Select Files</button>
	    <br> -->
	    
	    <input id="controlFiles"  name="*"  multiple placeholder="Fichero/s" type="file" multiple class="file-loading" ngf-select="populateFiles($files)"/>	   
	    <!-- <input type="hidden" name="*@TypeHint" value="nt:file" /> -->
	   <!--  <button type="submit" class="btn btn-default">Submit</button> -->
	   
	    <button ng-show='files.length > 0' ng-click="uploadAllFilesByForm()" type="button" class="btn btn-default glyphicon glyphicon-upload"> Upload</button>
	    
<!-- 	        <br>Files:
	    <ul>
	        <li ng-repeat="f in files" style="font:smaller">
	            {{f.name}}
	        </li>
    	</ul> -->
		</form>
	
	 </div>
 </div>
 
 
</body>