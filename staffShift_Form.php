<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
	<title>Web summit Staff App</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
	<script src="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<form role="form" id="staffDetails_form" action="#" method="POST">
				<div class="form-group">
					<label>full name:</label>
					<input type="name" class="form-control" name="name" placeholder="full name" class="bx" size="40"><br/>
				 </div>
				 <div class="form-group">
					<input type="text"  class="form-control"name="staffID" placeholder="Staff Identification number" class="txtboxes" size="40"><br/>
				 </div>
				 <div class="form-group">
					<input type="text"  class="form-control"name="jobRole" placeholder="Enter in staff members job role e.g. Team leader" size="40"><br/>
				 </div>
				 <div class="form-group">
					<input type="text"  class="form-control"name="shiftStart" placeholder="Enter when staff starts shift" size="40"><br/>
				 </div>
				 <div class="form-group">
					<input type="text"  class="form-control"name="shiftEnd" placeholder="Enter when staff finishs shift" size="40"><br/>
				 </div>
				 
				 <div class="form-group">
					<input type="submit" class="btns form-control" name="submit" value="Send"><br><br>
	             </div>
		</form>
	</div>
</body>
</html>