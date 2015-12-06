<?php
//checking if user has actually pressed submit
if(isset($_POST['submit'])){
$xmlFile = '';
$name = $_POST['name'];
$day = $_POST['day'];
$staffID = $_POST['staffID'];
$jobRole = $_POST['jobRole'];
$shiftStart = $_POST['shiftStart'];
$shiftEnd = $_POST['shiftEnd'];
$timeFrom = explode(":", $shiftStart);
$timeTo = explode(":", $shiftEnd);
//checking if strings have values
		if($name){
			if($staffID){
				if($jobRole){
					if($shiftStart){
						if($shiftEnd){
						//need to do more research bbut this if statement should work 	
						//WARNING do not run this may erase data
					    //note to self need to add a day select box
					    $xml= simplexml_load_file($xmlFile);
					    $simpleXML = new SimpleXMLElement($xml->asXML());
					    
					    
					    //this code from http://stackoverflow.com/questions/4386465/php-count-xml-elements
					    //counts the number of staff already in the xml element need to set id
					    //$numStaff->evaluate('count(//'+ $day +'/'')');
						for($i=$timeFrom; $i<=$timeFrom; $i++){
						//$day string might not work like this
						$timeslot = $simpleXML->shiftTimeTable->$day->timeslot[$i];
						$staffadd = $timeslot->addChild('staff');
						//this may need to be echoed
						$staffadd->addAttribute("id=",""+ $i +"");
						$staffadd->addChild("name", $name);
						$staffadd->addChild("staffID", $staffID);
						$staffadd->addChild("staffRole", $jobRole);
						}
						//file_put_contents($xmlFile, mixed $data [, int $flags = 0 [, resource $context ]] );
						//$simpleXML->saveXML();
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

