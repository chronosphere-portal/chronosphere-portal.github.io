---
title: GPlates resources
permalink: "/docs/GPlates/"
---

*description will go here*

### Available variables 

muma

The dataset can be downloaded from [here](http://www.earthbyte.org/gplates-2-1-software-and-data-sets/){target="_blank"}.

Access the Official release variable (**muma**) of the (**GPlates**) dataset with a `fetch()` function:
	


```r
ctdb <- fetch(dat = GPlates)
```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?
	


```r
ctdb <- fetch(dat = GPlates, var = muma, dir, verbose=FALSE)
```

#### Resolution 

none

#### Archive size

GPlates_muma_2016_GK07.zip: 1.5 MiB

#### Version

2016_GK07

#### Licence

not specified

### Reference
Matthews, K. J., Maloney, K. T., Zahirovic, S., Williams, S. E., Seton, M., & Müller, R. D. (2016). Global plate boundary evolution and kinematics since the late Paleozoic. Global and Planetary Change, 146, 226–250. https://doi.org/10.1016/j.gloplacha.2016.10.002 <br><br> Müller, R. D., Seton, M., Zahirovic, S., Williams, S. E., Matthews, K. J., Wright, N. M., Shephard, G. E., Maloney, K. T., Barnett-Moore, N., Hosseinpour, M., Bower, D. J., & Cannon, J. (2016). Ocean Basin Evolution and Global-Scale Plate Reorganization Events Since Pangea Breakup. Annual Review of Earth and Planetary Sciences, 44(1), 107–138. https://doi.org/10.1146/annurev-earth-060115-012211


*This page was automatically generated*
