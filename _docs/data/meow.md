---
title: Marine Ecoregions of the World
permalink: "/docs/meow/"
---

*description will go here*

### Available variables 

ecos

The dataset can be downloaded from [here](https://www.worldwildlife.org/publications/marine-ecoregions-of-the-world-a-bioregionalization-of-coastal-and-shelf-areas){target="_blank"}.

Access the Official release variable (**ecos**) of the (**meow**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = meow)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = meow, var = ecos, dir, verbose=FALSE)
```

#### Resolution 

ecoregions

#### Archive size

meow_ecos_20080710_ecoregions.zip: 384.8 KiB

#### Version

20080710

#### Licence

not specified

### Reference
Spalding, M. D., Fox, H. E., Allen, G. R., Davidson, N., Ferdaña, Z. A., Finlayson, M., Halpern, B. S., Jorge, M. A., Lombana, A., Lourie, S. A., Martin, K. D., McManus, E., Molnar, J., Recchia, C. A., & Robertson, J. (2007). Marine Ecoregions of the World: A Bioregionalization of Coastal and Shelf Areas. BioScience, 57(7), 573–583. https://doi.org/10.1641/B570707 

*This page was automatically generated*
