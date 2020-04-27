
<!-- README.md is generated from README.Rmd. Please edit that file -->
<img src="man/figures/hexdefect3dprintr.png" align="right" height="150" />
==========================================================================

defect3dprintr
==============

<p>
 
</p>
The goal of defect3dprintr is to detect defects during manufacturing production using an in-situ camera monitoring system via statistical learning. The package detects defects in parts built by the direct metal laser sintering (DMLS) additive manufacturing process caused by inconsistencies in the metal powder distribution on the build plate. First, machine learning tools (for example line segment detection) are used to summarize the standalone images of the build plate before and after the laser sinters. Statistical anomaly detection algorithms are then used to predict at what layer defects may occur. The approach has been demonstrated to detect manual shorteeding and recoater streaking.

Installation
------------

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
# devtools::install_github("trionaryan/defect3dprintr")
# library(defect3dprintr)
```

Examples
--------

Here are two examples using images of the EOS DMLS XXX system. A XXX camera is mounted inside the build chamber capturing the powder bed layer before and after laser fire.

### Example 1. Manual Shortfeeding

Manual shortfeeding of powder was induced defects in cubes built by the DMLS process. Line segment detection was used to identify inconsistent areas of powder on the build plate.

``` r
# library(defect3dprintr)
## basic example code
```

### Example 2. Recoater Streaking

This is an example detecting recoater streaking during a build. This occured naturally in the process.

Streaming Anomaly Detection During Production
---------------------------------------------

The line segment count was recorded during the build at each layer. Using time series anomaly detection, anomalies can be detected while streaming the data via statistical learning.

1.  Run lsd - (Say image1 to image100 low resolution, could be stored on github rather than in package (.buildIgnore))
2.  Do anomaly detection using r-esd (easy and quick)
3.  Plot the results i.e. line segment count across time with anomalies marked.
