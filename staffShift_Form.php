<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
	<title>Web summit Staff App</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
	<script src="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-xs-2">
		</div>
		<div class="col-xs-8">
		<form role="form" id="staffDetails_form" action="writeToXML.php" method="POST">
				<div class="form-group">
					<label>full name:</label>
					<input type="name" class="form-control" name="name" placeholder="full name" class="bx" size="40"><br/>
				 </div>
				 <div class="form-group">
				 	<label>Staff Identification Number:</label>
					<input type="text"  class="form-control"name="staffID" placeholder="Staff Identification number" class="txtboxes" size="40"><br/>
				 </div>
				 <div class="form-group">
				 	<label>Job Role:</label>
					<input type="text"  class="form-control"name="jobRole" placeholder="Enter in staff members job role e.g. Team leader" size="40"><br/>
				 </div>
				 <div class="row">
				 <div class="col-xs-4">
				 	<label>Select the day the staff member is working on:</label>
				 	  <select class="selectpicker" name="day" placeholder="Select day">
				 	  	<option disabled selected>Please Select a day</option>
    					<option>tuesday</option>
    					<option>wednesday</option>
    					<option>thursday</option>
    				  </select>
					<!--<input type="text"  class="form-control"name="shiftStart" placeholder="Enter when staff starts shift" size="40"><br/>-->
				 </div>
				 <div class="col-xs-4">
				 		<label>Select the hour the staff member starts work:</label>
				 	  <select class="selectpicker" name="shiftStart" placeholder="Begining of shift">
				 	  	<option disabled selected>select start shift</option>
    					<option>01:00</option>
    					<option>02:00</option>
    					<option>03:00</option>
    					<option>04:00</option>
    					<option>05:00</option>
    					<option>06:00</option>
    					<option>07:00</option>
    					<option>08:00</option>
    					<option>09:00</option>
    					<option>11:00</option>
    					<option>12:00</option>
    					<option>13:00</option>
    					<option>14:00</option>
    					<option>15:00</option>
    					<option>16:00</option>
    					<option>17:00</option>
    					<option>18:00</option>
    					<option>19:00</option>
    					<option>20:00</option>
    					<option>21:00</option>
    					<option>22:00</option>
    					<option>23:00</option>
    					<option>00:00</option>
    				  </select>
					<!--<input type="text"  class="form-control"name="shiftStart" placeholder="Enter when staff starts shift" size="40"><br/>-->
				 </div>
				 <div class="col-xs-4">
				 	<label>Select the hour the staff member finishes work:</label>
				 	<select class="selectpicker" name="shiftEnd" placeholder="End of shift">
				 		<option disabled selected>select End shift</option>
    					<option>01:00</option>
    					<option>02:00</option>
    					<option>03:00</option>
    					<option>04:00</option>
    					<option>05:00</option>
    					<option>06:00</option>
    					<option>07:00</option>
    					<option>08:00</option>
    					<option>09:00</option>
    					<option>11:00</option>
    					<option>12:00</option>
    					<option>13:00</option>
    					<option>14:00</option>
    					<option>15:00</option>
    					<option>16:00</option>
    					<option>17:00</option>
    					<option>18:00</option>
    					<option>19:00</option>
    					<option>20:00</option>
    					<option>21:00</option>
    					<option>22:00</option>
    					<option>23:00</option>
    					<option>00:00</option>
    				  </select>
					<!--<input type="text"  class="form-control"name="shiftEnd" placeholder="Enter when staff finishs shift" size="40"><br/>-->
				 </div>
				 
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