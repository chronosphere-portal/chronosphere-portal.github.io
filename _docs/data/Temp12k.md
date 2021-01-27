---
title: Temperature 12k Database
permalink: "/docs/Temp12k/"
---

*description will go here*

### Available variables 

air

The dataset can be downloaded from [here](https://doi.org/10.25921/4RY2-G808){target="_blank"}.

Access the Official release variable (**air**) of the (**Temp12k**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = Temp12k)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = Temp12k, var = air, dir, verbose=FALSE)
```

#### Resolution 

none

#### Archive size

Temp12k_air_v1_0_0.zip: 15.8 MiB

#### Version

v1_0_0

#### Licence

CC-BY

### Reference
Kaufman, D., McKay, N., Routson, C., Erb, M., Davis, B., Heiri, O., Jaccard, S., Tierney, J., Dätwyler, C., Axford, Y., Brussel, T., Cartapanis, O., Chase, B., Dawson, A., de Vernal, A., Engels, S., Jonkers, L., Marsicek, J., Moffa-Sánchez, P., … Zhilich, S. (2020). A global database of Holocene paleotemperature records. Scientific Data, 7(1), 115. https://doi.org/10.1038/s41597-020-0445-3 

*This page was automatically generated*
