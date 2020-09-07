# LaTeX2HTML 2018.3 (Released July 19, 2018)
# Associate labels original text with physical files.


$key = q/fig:FaultsHIB/;
$external_labels{$key} = "$URL/" . q|node4.html|; 
$noresave{$key} = "$nosave";

$key = q/fig:FracWellImaging/;
$external_labels{$key} = "$URL/" . q|node4.html|; 
$noresave{$key} = "$nosave";

$key = q/fig:stress-map-VMF/;
$external_labels{$key} = "$URL/" . q|node3.html|; 
$noresave{$key} = "$nosave";

$key = q/table:FaultsHIBSummary/;
$external_labels{$key} = "$URL/" . q|node4.html|; 
$noresave{$key} = "$nosave";

1;


# LaTeX2HTML 2018.3 (Released July 19, 2018)
# labels from external_latex_labels array.


$key = q/_/;
$external_latex_labels{$key} = q|<|; 
$noresave{$key} = "$nosave";

$key = q/fig:FaultsHIB/;
$external_latex_labels{$key} = q|1.3|; 
$noresave{$key} = "$nosave";

$key = q/fig:FracWellImaging/;
$external_latex_labels{$key} = q|1.2|; 
$noresave{$key} = "$nosave";

$key = q/fig:stress-map-VMF/;
$external_latex_labels{$key} = q|1.1|; 
$noresave{$key} = "$nosave";

$key = q/table:FaultsHIBSummary/;
$external_latex_labels{$key} = q|1.1|; 
$noresave{$key} = "$nosave";

1;

