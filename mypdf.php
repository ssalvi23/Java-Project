<?php
require(fpdf/fpdf.php);
$mypdf=new $FPDF();
$mypdf->addPage();
$mypdf->setFont("Times","B",18);
$mypdf->cell(40,20,"Hello Sakshi...........");
$mypdf->output();
?>