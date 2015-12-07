<?php

/*

//checking if user has actually pressed submit
if(isset($_POST['submit'])){
$xmlFile = 'XML/shiftTimeTable.xml';
$name = $_POST['name'];
$day = $_POST['day'];
$staffID = $_POST['staffID'];
$jobRole = $_POST['jobRole'];
$shiftStart = $_POST['shiftStart'];
$shiftEnd = $_POST['shiftEnd'];
$timeFrom = explode(":", $shiftStart,2);
$timeTo = explode(":", $shiftEnd,2);
//checking if strings have values
	if($day){
		if($name){
			if($staffID){
				if($jobRole){
					if($shiftStart){
						if($shiftEnd){
						//need to do more research bbut this if statement should work 	
						//WARNING do not run this may erase data
					    //note to self need to add a day select box
					    $xml= simplexml_load_file($xmlFile);
					    
					    //$simpleXML = $xml->asXML(); I thought this writes and closes the file.
					    
					    
					    //this code from http://stackoverflow.com/questions/4386465/php-count-xml-elements
					    //counts the number of staff already in the xml element need to set id
					    //$numStaff->evaluate('count(//'+ $day +'/'')');
						for($i=$timeFrom; $i<=$timeTo; $i++){
						//$day string might not work like this
					 	//$timeslot = $simpleXML->tuesday->timeslot;
						$staffadd = $xml->tuesday->timeslot->addChild('staff');
						//this may need to be echoed
						//$staffadd->tuesday->timeslot[1]->addAttribute("id=","1");
						$staffadd->addChild("name", $name);
						$staffadd->addChild("staffID", $staffID);
						$staffadd->addChild("staffRole", $jobRole);
						}
						//file_put_contents($xmlFile, mixed $data [, int $flags = 0 [, resource $context ]] );
				     	//$xml->saveXML();
				//	$xml->asXML();   try this if it doesnt work.
					

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
} */ 

if(isset($_POST['submit'])){
	$xmlFile = 'XML/rssfeed.xml';
	$name = $_POST['title'];
	$day = $_POST['link'];
	$staffID = $_POST['image'];
	$jobRole = $_POST['description'];
	
	
	//load the simplexml object
	$xmlObj = simplexml_load_file('XML/rssfeed.xml');
	
	$xmlformater = $xmlObj->asXML();
	

    //adding new childs 
    $newChild = $xmlObj->addChild('item');
    $newChild->addChild('title',$name);
    $newChild->addChild('link','</p>'+$day+'</p>');
    $newChild->addChild('image',$staffID);
    $newChild->addChild('description',$jobRole);
    
    //transforms object to xml format
    $xmlformater = $xmlObj->asXML();
    
    
/*end of if*/}
	else{
      exit('Failed im going to jam making');
	}
	
	file_put_contents('XML/rssfeed.xml', $xmlObj->asXML());
?>

