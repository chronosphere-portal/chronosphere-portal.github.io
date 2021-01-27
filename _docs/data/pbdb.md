---
title: Paleobiology Database
permalink: "/docs/pbdb/"
---

*description will go here*

### Available variables 

occs

The dataset can be downloaded from [here](https://paleobiodb.org/){target="_blank"}.

Access the Official release variable (**occs**) of the (**pbdb**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = pbdb)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = pbdb, var = occs, dir, verbose=FALSE)
```

#### Resolution 

species

#### Archive size

pbdb_occs_20210126_species.zip: 81.7 MiB

#### Version

20210126

#### Licence

CC-BY

### Reference
Please remember to acknowledge the Paleobiology Database (http://paleobiodb.org) in your publication.

*This page was automatically generated*
