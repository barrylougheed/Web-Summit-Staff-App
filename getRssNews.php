<!DOCTYPE html>
<html>
<head><title>rss feed</title>
<link type="text/css" rel="stylesheet" href="CSS/rssStyle.css" />
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
</head>
<body>
<?php
//some code was retrieved from http://www.w3schools.com/php/php_ajax_rss_reader.asp
 $xml = ("XML/rssfeed.xml");
 $xmlFile = new DOMDocument();
 $xmlFile->load($xml);
 $channel = $xmlFile->getElementsByTagName('item')->item(0);
 $ch_title = $xmlFile->getElementsByTagName('title')->item(0)->childNodes->item(0)->nodeValue;
 $ch_link = $xmlFile->getElementsByTagName('link')->item(0)->childNodes->item(0)->nodeValue;
 
//echo("<p><a href='". $ch_link . "'>" . $ch_title . "</a></p>");
?>
<div class="container-fluid" id="rsswrap" >
	<div class="row" id="rsshead">
		<p><a id="rsshead" href="<?php echo($ch_link); ?>"><?php echo($ch_title); ?></a></p>
	</div>
	<div id="rsscontent" class="row">
<?php
$news = $xmlFile->getElementsByTagName('item');
//$temp=count($news->getElementsByTagName('item'));
for($i=0; $i<4; $i++){
	if($i>0){echo("<hr></hr>");}
	//title = $news->item($i)->getElementsByTagName('title')->item(0)->childNodes->item(0)->nodeValue;
	//$link = $news->item($i)->getElementsByTagName('link')->item(0)->childNodes->item(0)->nodeValue;
	//$image=$news->item($i)->getElementsByTagName('image')->item(0)->childNodes->item(0)->nodeValue;
	//$description = $news->item($i)->getElementsByTagName('description')->item(0)->childNodes->item(0)->nodeValue;
	$title = $news->item($i)->getElementsByTagName('title')->item(0)->childNodes->item(0)->nodeValue;
	$link = $news->item($i)->getElementsByTagName('link')->item(0)->childNodes->item(0)->nodeValue;
	$image=$news->item($i)->getElementsByTagName('image')->item(0)->childNodes->item(0)->nodeValue;
	$description = $news->item($i)->getElementsByTagName('description')->item(0)->childNodes->item(0)->nodeValue;
	//echo("<p><a href='" . $link ."'>" . $title ."</a>");
	//echo("<br/>");
	//echo("<img src='" . $image . "' width='50' height='50'></img>");
	//echo($description . "</p>");
	

?>	
			
			<div id="headlineTitle">
				<p><a href="<?php echo($link); ?>"><?php echo($title); ?></a></p>
			</div>
			<div class="row">
			<div class="col-xs-6">
				<img src="<?php echo($image);?>" class="rssimg"></img>
			</div>
			<div class="col-xs-6">
				<p class="rssdescrip"> <?php echo($description); ?> </p>
				
			</div>
			
		</div>
		
		<?php
		//if this is the last element in the loop create a small space
		if($i>1){echo("<br/>");}
		}
		?>
	</div>
	</div>
</body>
</html>