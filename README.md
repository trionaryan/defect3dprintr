
<!-- README.md is generated from README.Rmd. Please edit that file -->
<img src="man/figures/hexdefect3dprintr.png" align="right" height="150" />
==========================================================================

defect3dprintr
==============

<p>
 
</p>
The goal of defect3dprintr is to defect detects during manufacturing production using an in-situ camera monitoring system via statistical learning. The package detects defects in parts built by the direct metal laser sintering (DMLS) additive manufacturing process caused by inconsistencies in the metal powder distribution on the build plate. First, machine learning tools (for example line segment detection) are used to summarize the standalone images of the build plate before and after the laser sinters. Statistical anomaly detection algorithms are then used to predict at what layer defects may occur. The approach has been demonstrated to detect manual shorteeding and recoater streaking.

Installation
------------

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("trionaryan/defect3dprintr")
```

Example 1. Manual Shortfeeding
------------------------------

This is an example detecting manual shortfeeding in images of the EOS DMLS XXX system.

``` r
# library(defect3dprintr)
## basic example code
```

Example 2 - Recoater Streaking
------------------------------

This is an example detecting recoater streaking during a build using images from the EOS DMLS XXX system.

Anomaly Detection During Production
-----------------------------------

The line segment count can be done during the build and anomalies can be detected while streaming the data via statistical learning.

1.  Run lsd - (this is very long though?!? Do I need to put a series of images on github then?)
2.  Do some anomalydetection using r-esd / anomalize (easy and quick)
3.  Plot the results i.e. line segment count across time with anomalies marked.
