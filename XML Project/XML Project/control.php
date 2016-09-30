<?php

ini_set('display_errors', '1');
error_reporting (E_ALL); 

$country = $_REQUEST['country'];


$xp = new XsltProcessor();

$xsl = new DomDocument;

switch ($country)
{
case 1:
  $xsl->load('http://lyle.smu.edu/~ruixuanz/cse7347/rush/project/Brazil.xslt');
  break;
case 2:
  $xsl->load('http://lyle.smu.edu/~ruixuanz/cse7347/rush/project/Mexico.xslt');
  break;
case 3:
  $xsl->load('http://lyle.smu.edu/~ruixuanz/cse7347/rush/project/Pakistan.xslt');
  break;
case 4:
  $xsl->load('http://lyle.smu.edu/~ruixuanz/cse7347/rush/project/India.xslt');
  break;
case 5:
  $xsl->load('http://lyle.smu.edu/~ruixuanz/cse7347/rush/project/Korea.xslt');
  break;

}




 $xp->importStylesheet($xsl);


 $xml_doc = new DomDocument;
 $xml_doc->load('results.xml');


   if ($html = $xp->transformToXML($xml_doc)) {
    echo $html;
   } else {
    echo "-- could not transform --";
    trigger_error('XSL transformation failed.', E_USER_ERROR);
 } 
?>