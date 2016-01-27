<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0" %>
<sling:defineObjects/>

<div class="jumbotron" >
	<div class="container">		
		<form  ng-app="slingManager" ng-controller="slingManagerUploadContentCtrl" class="text-center" action="/content/demoApp/repositorio" method="post" enctype="multipart/form-data">
		   
		     <code>Your operations will be done with: {{username}}</code>
		   
		    <input id="controlFiles"  name="*"  multiple placeholder="Fichero/s" type="file" multiple class="file-loading" ngf-select="populateFiles($files)"/>	   
<!-- 			<button ng-show='files.length > 0' 
			ng-click="uploadAllFilesByForm()" 
			type="button" 
			class="btn btn-default glyphicon glyphicon-upload"
			data-toggle="modal">
					 Upload
			</button> -->
			
			<a ng-show='files.length > 0' ng-click="uploadAllFilesByForm()"  role="button" class="btn btn-primary glyphicon glyphicon-upload" data-toggle="modal">Upload files</a>
			
				<!-- <br>Files uploaded in last request:
			    <ul>
			        <li ng-repeat="f in files">
			            {{f.name}}
			        </li>
		    	</ul> -->
		    	
		    	<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						        <h4 class="modal-title" id="myModalLabel">Please wait uploading content</h4>
						      </div>
						      <div class="modal-body center-block">
						        <div class="progress">
						          <div class="progress-bar bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
						            
						          </div>
						        </div>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div><!-- /.modal-content -->
						  </div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
						
						
		</form>	
	</div>
</div>
 
