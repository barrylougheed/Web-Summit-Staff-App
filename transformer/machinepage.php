<?php

// echo $tueTimetable->transformToXML($xml);
$xslTemp = $_POST['url'];
?>
<script> alert("<?php echo($xslTemp); ?>");</script>
<?php
//load the xml
$xml = new DOMDocument;
$xml->load('../XML/webSummitTimetable.xml');

//load the xsl 
/*$xsltue = $xslwed = $xslthur = new DOMDocument;
$xsltue = $xslwed = $xslthur->substituteEntities = true;*/

//$xsltue = new DOMDocument;
$xsl= new DOMDocument;
$xsl->substituteEntities = true;

$xsl->load('../XSL/mmachinesummit.xsl');

//configures proccesor to transfrom the different timetable to the page 
$Procc = new XSLTProcessor;


//attach the xsl rules to the transfromer
// //attach the xsl rules to the transfromer

$Procc->importStyleSheet($xsl);

echo $Procc->transformToXML($xml);





?>