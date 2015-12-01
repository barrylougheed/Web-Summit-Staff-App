<?php

//load the xml
$xml = new DOMDocument;
$xml->load('webSummitTimetable.xml');

//load the xsl 
$xsltue = $xslwed = $xslthur = new DOMDocument;
$xsl->substituteEntities = true;
$xsl->load("timetableTuesday.xsl");

//configures proccesor to transfrom the different timetable to the page 
$tueTimetable = new XSLTProcessor;
$wedTimetable = new XSLTProcessor;
$thurTimetable = new XSLTProcessor;

//attach the xsl rules to the transfromer

$tueTimetable->importStyleSheet($xsl);

echo $tueTimetable->transfromToXML($xml);



?>