---
title: J.J. Sepkoski's compendium 
permalink: "/docs/sepkoski/"
---

*description will go here*

### Available variables 

genera

The dataset can be downloaded from [here](http://strata.geology.wisc.edu/jack/){target="_blank"}.

Access the Official release variable (**genera**) of the (**sepkoski**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = sepkoski)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = sepkoski, var = genera, dir, verbose=FALSE)
```

#### Resolution 

none

#### Archive size

sepkoski_genera_2002_kiessling.zip: 394.6 KiB

#### Version

2002_kiessling

#### Licence

not specified

### Reference
Sepkoski, J. J., Jablonski, D. & Foote, M. (2002). Sepkoski’s Genus Compendium—Editors Introduction & Timescale. no.363 (2002). 

*This page was automatically generated*
