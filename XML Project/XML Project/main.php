<?php

ini_set('display_errors', '1');
error_reporting (E_ALL); 

$country = "null";
if (isset($_REQUEST['country'] )) {
 $country = $_REQUEST['country'];
}

$xp = new XsltProcessor();

 $xsl = new DomDocument;
 $xsl->load('http://lyle.smu.edu/~ruixuanz/cse7347/rush/project/main.xslt');

 $xp->importStylesheet($xsl);


 $xml_doc = new DomDocument;
 $xml_doc->load('results.xml');

  $xp->setParameter(NULL, 'country', $country);

   if ($html = $xp->transformToXML($xml_doc)) {
    echo $html;
   } else {
    echo "-- could not transform --";
    trigger_error('XSL transformation failed.', E_USER_ERROR);
 } 
?>