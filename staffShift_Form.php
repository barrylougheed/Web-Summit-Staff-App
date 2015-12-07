<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
	<title>Web summit Staff App</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
	<script src="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="CSS/style.css" />
</head>
<body>
	<div class="row">
		<div class="col-xs-2">
		</div>
		<div class="col-xs-8" id="formpos">
		<form role="form" id="staffDetails_form" action="writeToXML.php" method="POST">
				<div class="form-group">
					<label>title:</label>
					<input type="text" class="form-control" name="title" placeholder="title of page" class="bx" size="40"><br/>
				 </div>
				 <div class="form-group">
				 	<label>link to page:</label>
					<input type="text"  class="form-control" name="link" placeholder="link to page" class="txtboxes" size="40"><br/>
				 </div>
				 <div class="form-group">
				 	<label>link to image:</label>
					<input type="text"  class="form-control"name="image" placeholder="link to image" size="40"><br/>
				 </div>
				 <div class="form-group">
				 		<label>enter in a description:</label>
				 	  <input type="text"  class="form-control"name="description" placeholder="description" size="40"><br/>
					<!--<input type="text"  class="form-control"name="shiftStart" placeholder="Enter when staff starts shift" size="40"><br/>-->
				 </div>
				 
				 
				 
				 <div class="form-group">
				 	<hr/>
					<input type="submit" class="btns form-control" name="submit" value="Send"><br><br>
	             </div>
		</form>
		</div>
		<div class="col-xs-2">
		</div>
	</div>
</body>
</html>