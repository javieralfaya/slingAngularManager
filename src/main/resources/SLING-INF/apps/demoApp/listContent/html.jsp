


	<div class="container" ng-controller="slingManagerListContentCtrl">

		<!-- <div class="panel panel-default" ng-show='bills.length > 0'> -->
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="panel-title ">
						<span class="glyphicon glyphicon glyphicon-list"></span> <label>Contenido del repositorio</label>
				</div>
		<!-- Table -->
		<table class="table">
			<thead>
				<tr>
					<th>Nombre del fichero</th>
					<th>Carpeta (path)</th>
					<th>Operaciones</th>

				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="file in files">
					<!-- <td>{{file.date | date:'yyyy-MM-dd'}}</td> -->

					<td>{{file.name}}</td>
					<td>{{file["jcr:path"]}}</td>
					<td>
						<button ng-click="deleteContent(file['jcr:path'])" type="button"
							class="btn btn-default glyphicon glyphicon-trash"> Delete</button>
						<!-- <button ng-click="signContent(file['jcr:path'])" type="button"
							class="btn btn-default glyphicon glyphicon-pencil"> Sign</button> -->
						  <a id="linkImagesReport" data-toggle="modal" class="btn btn-default glyphicon glyphicon-pencil"  href="/demoApp/modal/hello.html"
						  	 		 data-target="#signMdal" data-keyboard="true" data-backdrop='static'>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

 <div class="modal-sign" id="signMdal">
       <!-- remote content will be inserted here via jQuery load() -->
  </div>

</body>
</html>