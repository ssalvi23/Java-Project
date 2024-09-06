<html>
<body>
<?php
require("fpdf/fpdf.php"); // path to fpdf.php
$pdf = new FPDF();
$pdf->addPage();
$pdf->setFont("Arial", 'IBU', 16);
$pdf->settextcolor(150,200,225);
$pdf->cell(40, 10, "Hello Out There!");
$pdf->output();
<body>
</html>