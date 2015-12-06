<?php
//checking if user has actually pressed submit
if(isset($_POST['submit'])){
$name = $_POST['name'];
$staffID = $_POST['staffID'];
$jobRole = $_POST['jobRole'];
$shiftStart = $_POST['shiftStart'];
$shiftEnd = $_POST['shiftEnd'];
//checking if strings have values
		if($name){
			if($staffID){
				if($jobRole){
					if($shiftStart){
						if($shiftEnd){
						//need to do more research but this if statement should work		
						
								
					}else{
						echo "<a href='ContactUs.php'>sending failed, shift end empty, click here to return</a>";
					}
					}else{
						echo "<a href='ContactUs.php'>sending failed, shift start empty, click here to return</a>";
					}
				}else{
					echo "<a href='ContactUs.php'>sending failed, Job Role not entered please click here and try again</a>";
				}
			}else{
				echo "<a href='ContactUs.php'>sending failed, staff ID not entered</a>";
			}
		}else{
			echo "<a href='ContactUs.php'>sending failed, name not entered please click here and try again</a>";
		}
}
?>

