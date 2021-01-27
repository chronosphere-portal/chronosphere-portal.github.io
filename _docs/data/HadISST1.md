---
title: Hadley Centre Sea Ice and Sea Surface Temperature data set
permalink: "/docs/HadISST1/"
---

*description will go here*

### Available variables 

sst

The dataset can be downloaded from [here](https://www.metoffice.gov.uk/hadobs/hadisst/){target="_blank"}.

Access the Official release variable (**sst**) of the (**HadISST1**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = HadISST1)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = HadISST1, var = sst, dir, verbose=FALSE)
```

#### Resolution 

1

#### Archive size

HadISST1_sst_20191212_1.zip: 220.7 MiB

#### Version

20191212

#### Licence

not specified

### Reference
Rayner, N. A., Parker, D. E., Horton, E. B., Folland, C. K., Alexander, L. V., Rowell, D. P., … Kaplan, A. (2003). Global analyses of sea surface temperature, sea ice, and night marine air temperature since the late nineteenth century. Journal of Geophysical Research: Atmospheres, 108(D14), 4407. https://doi.org/10.1029/2002JD002670


*This page was automatically generated*
