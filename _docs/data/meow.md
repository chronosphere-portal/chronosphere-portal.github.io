---
title: Marine Ecoregions of the World (meow)
permalink: /docs/meow/
---
This is a new global system for coastal and shelf areas: the Marine Ecoregions of the World, or MEOW, a nested system of 12 realms, 62 provinces, and 232 ecoregions. This system provides considerably better spatial resolution than earlier global systems, yet it preserves many common elements and can be cross-referenced to many regional biogeographic classifications. 



### Available variables 

ecos - Ecoregion shapefiles

The dataset downloaded from [here](https://www.worldwildlife.org/publications/marine-ecoregions-of-the-world-a-bioregionalization-of-coastal-and-shelf-areas).

This dataset requires the 'rgdal' package to load.

Access the ecoregions shapefiles variable ("ecos") of the "meow" dataset with a `fetch()` function:

```{r}
 ecoreg <- fetch("meow", "ecos")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
ecoreg <- fetch(dat = "meow", var = "ecos", dir, verbose=FALSE)

```

#### Resolution 

ecoregions



#### Archive size

meow_ecos_20080710_ecoregions: 507 KB

#### Version

20080710

#### Licence


Not specified


### Reference

Spalding, M. D., Fox, H. E., Allen, G. R., Davidson, N., FerdaÃ±a, Z. A., Finlayson, M., Halpern, B. S., Jorge, M. A., Lombana, A., Lourie, S. A., Martin, K. D., McManus, E., Molnar, J., Recchia, C. A., & Robertson, J. (2007). Marine Ecoregions of the World: A Bioregionalization of Coastal and Shelf Areas. BioScience, 57(7), 573-583. [doi.org/10.1641/B570707](URL: https://doi.org/10.1641/B570707//)


