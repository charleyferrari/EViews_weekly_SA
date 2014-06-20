'Weekly Seasonal Adjustment

'Given the input of a series, this program will:

'1) Test if the current page is weekly. Show a UI prompt if not.
		'Coming soon, once I prepare this as an addin

'2) Create strings of the current pagename, and seasonal adjustment series
%sourcePageName = @pagename
%wsfSeriesName = %0+"_wsf"
%sfSeriesName = %0+"_sf"

'3) Create a Monthly tab
pagecreate(page=M) m
pageselect M

'4) Copy the input series, paste it into the monthly tab to convert it
copy(c=a) {%sourcePageName}\{%0} {%0}


'5) Calculate the seasonal factors of the resultant monthly series
'		If we're doing this the conversion would have to be average?
{%0}.x12(save=d10)

'See below, might this be better to use?
'#########################################
'The "seas" command carries out seasonal adjustment using either the
'ratio to moving average, or the difference from moving average technique.

'EViews also performs Census X11 and X12 seasonal adjustment.
'#########################################

'6) Copy the seasonal factors back to the source weekly tab
copy(c=r) M\{%sfSeriesName} {%sourcePageName}\{%sfSeriesName}
pageselect {%sourcePageName}

'7) Divide the seasonal factors back into the source series
series {%wsfSeriesName} = {%0} / {%sfSeriesName}

'8) Delete the evidence
pagedelete M
