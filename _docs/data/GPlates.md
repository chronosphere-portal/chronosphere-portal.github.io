---
title: GPlates Resources data set (GPlates)
permalink: /docs/GPlates/
---
The PALEOMAP PaleoAtlas for GPlates consists of 91 paleogeographic maps spanning the Phanerozoic and late Neoproterozoic. The PaleoAtlas can be directly loaded into GPlates as a Time Dependent Raster file. The paleogeographic maps in the PaleoAtlas illustrate the ancient configuration of the ocean basins and continents, as well as important topographic and bathymetric features such as mountains, lowlands, shallow sea, continental shelves, and deep oceans.

### Available variables 

muma - The Matthews et al. (2016) rotations with the Muller et al. (2016) static polygons.

The dataset downloaded from [here](http://www.earthbyte.org/gplates-2-1-software-and-data-sets/).

Access the paleo maps variable ("muma") of the "GPlates" dataset with a `fetch()` function:

```{r}
 maps <- fetch("GPlates", "muma")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
maps <- fetch(dat = "GPlates", var = "muma", dir, verbose=FALSE)

```

#### Resolution 

none

#### Archive size

GPlates_muma_2016_GK07: 2.01 MB

#### Version

2016_GK07

#### Licence


Not specified



### Reference

Matthews, K. J., Maloney, K. T., Zahirovic, S., Williams, S. E., Seton, M., & Müller, R. D. (2016). Global plate boundary evolution and kinematics since the late Paleozoic. Global and Planetary Change, 146, 226-250. [doi.org/10.1016/j.gloplacha.2016.10.002](URL: https://doi.org/10.1016/j.gloplacha.2016.10.002//)


Müller, R. D., Seton, M., Zahirovic, S., Williams, S. E., Matthews, K. J., Wright, N. M., Shephard, G. E., Maloney, K. T., Barnett-Moore, N., Hosseinpour, M., Bower, D. J., & Cannon, J. (2016). Ocean Basin Evolution and Global-Scale Plate Reorganization Events Since Pangea Breakup. Annual Review of Earth and Planetary Sciences, 44(1), 107-138. [doi.org/10.1146/annurev-earth-060115-012211](URL:https://doi.org/10.1146/annurev-earth-060115-012211//)

 



