<?php
//load the xml
$xml = new DOMDocument;
$xml->load('XML/webSummitTimetable.xml');

//load the xsl 
/*$xsltue = $xslwed = $xslthur = new DOMDocument;
$xsltue = $xslwed = $xslthur->substituteEntities = true;*/

//$xsltue = new DOMDocument;
$xsltue = $xslwed = $xslthur = new DOMDocument;
$xsltue->substituteEntities = true;

$xsltue->load('tuestimetable.xsl');

//configures proccesor to transfrom the different timetable to the page 
$tueTimetable = new XSLTProcessor;
$wedTimetable = new XSLTProcessor;
$thurTimetable = new XSLTProcessor;

//attach the xsl rules to the transfromer

$tueTimetable->importStyleSheet($xsltue);

echo $tueTimetable->transformToXML($xml);



?>