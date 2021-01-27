---
title: Macrostrat
permalink: "/docs/macrostrat/"
---

*description will go here*

### Available variables 

all

The dataset can be downloaded from [here](https://macrostrat.org/){target="_blank"}.

Access the Official release variable (**all**) of the (**macrostrat**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = macrostrat)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = macrostrat, var = all, dir, verbose=FALSE)
```

#### Resolution 

none

#### Archive size

macrostrat_all_20200519.zip: 7.9 MiB

#### Version

20200519

#### Licence

CC-BY

### Reference
Acknowledge Macrostrat as the source of any information or data. A citable paper describing the Macrostrat data model, technical infrastructure, and current data set is forthcoming. In addition, you should also include citations to the original references associated with the data set that was used. These references are accessible from the API. If you would like your paper listed in the official publications, please contact us and we will provide a citation and link!

*This page was automatically generated*
