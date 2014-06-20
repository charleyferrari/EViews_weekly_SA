EViews_weekly_SA
================

Weekly Seasonal Adjustment workaround using Census X12A

This program is a test of an addin I'm developing for a few clients of mine. After several failed attempts, we were unable to find out what method the FED uses to seasoanlly adjust their weekly time series. My clients wanted a way to run x12A on weekly series.

This workaround converts the time series to monthly (averaging the weekly values,) extracts the d11 seasonal factors creating an _sf version of the series, converts the factors back into weekly (repeating the monthly values,) and then creates the _wsf version by dividing the factors back into the original series.

06/20/2014: This is what the client asked for, but after a few tests, it doesn't seem to be giving the best results. I'm going to keep on researching to see what we can do to make these better
