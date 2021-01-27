---
title: The PaleoReefs Database
permalink: "/docs/pared/"
---

*description will go here*

### Available variables 

occs

The dataset can be downloaded from [here](https://www.paleo-reefs.pal.uni-erlangen.de/){target="_blank"}.

Access the Official release variable (**occs**) of the (**pared**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = pared)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = pared, var = occs, dir, verbose=FALSE)
```

#### Resolution 

none

#### Archive size

pared_occs_20200217.zip: 595.0 KiB

#### Version

20200217

#### Licence

not specified

### Reference
Kiessling, W., & Flügel, E. (2002). Paleoreefs—A Database on Phanerozoic Reefs. In Phanerozoic Reef Patterns: Vol. Phanerozoic Reef Patterns (pp. 77–92).

*This page was automatically generated*
