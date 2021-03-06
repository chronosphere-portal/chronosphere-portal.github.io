---
title: Paleobiology Database (pbdb)
permalink: /docs/pbdb/
---
The Paleobiology Database is a public database of paleontological data that anyone can use, maintained by an international non-governmental group of paleontologists.


### Available variables 

occs - Raw species occurrences

The dataset downloaded from [here](https://paleobiodb.org/).

Access the raw species occurrences variable ("occs") of the "pbdb" dataset with a `fetch()` function:

```{r}
 spec <- fetch("pbdb", "occs")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
spec <- fetch(dat = "pbdb", var = "occs", dir, verbose=FALSE)

```


#### Resolution 

species

#### Archive size

pbdb_occs_20191122_species: 79.6 MB

pbdb_occs_20200217_species: 80.8 MB

#### Versions

20191122

20200217

20200623 



#### Licence


[CC-BY](https://opendefinition.org/licenses/cc-by/)


### Reference

The Paleobiology Database [www.paleobiodb.org](URL: https://paleobiodb.org//)
