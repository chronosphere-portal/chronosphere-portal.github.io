---
title: PaleoMAP Project (paleomap)
permalink: /docs/paleomap/
---
The PaleoMAP Project is to illustrate the plate tectonic development of the ocean basins and continents, as well as the changing distribution of land and sea during the past 1100 million years.



### Available variables 


[dem - PaleoDEM Digital Elevation Models](#paleodem-digital-elevation-models)

The dataset downloaded from [here](https://www.earthbyte.org/paleodem-resource-scotese-and-wright-2018/).

[model - Plate Tectonic Reconstruction Model](#plate-tectonic-reconstruction-model)

The dataset downloaded from [here](https://www.earthbyte.org/webdav/ftp/earthbyte/Scotese_PaleoAtlas_v3.zip).

[paleoatlas -PaleoAtlas paleorasters](#paleoatlas-paleorasters)

The dataset downloaded from [here](https://www.earthbyte.org/paleomap-paleoatlas-for-gplates/).

[adminlines - Administrative boundaries for the PaleoMAP project](#administrative-boundaries-for-the-paleomap-project)

Personal communication from C. Scotese.

[paleocoastlines -PaleoCoastlines](#paleomap-paleocoastlines)

The dataset downloaded from [here](https://zenodo.org/record/4297693).


### PaleoDEM Digital Elevation Models

A paleo-digital elevation model (paleoDEM) is a digital representation of paleotopography and paleobathymetry that has been “reconstructed” back in time. It can be used to produce detailed paleogeographic maps. The paleoDEMS describe the changing distribution of deep oceans, shallow seas, lowlands, and mountainous regions during the last 540 million years at five million year intervals. Each PaleoDEM is an estimate of the elevation of the land surface and depth of the ocean basins measured in meters (m) at a resolution of 1×1 degrees. 

This dataset requires the 'ncdf4' package to load. 

Access the digital elevation model variable (`"dem"`) of the "paleomap" dataset with a `fetch()` function:

```{r}
 maps <- fetch("paleomap", "dem")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
maps <- fetch(dat = "paleomap", var = "dem", dir, verbose=FALSE)

```


#### Resolution 

0.5

1.0

#### Archive size

paleomap_dem_20190719_0.5: 30.6 MB

paleomap_dem_20190719_1: 6.07 MB


#### Version

20190719

#### Licence

[CC-BY-NC-ND](https://creativecommons.org/licenses/by-nc-nd/2.0/)

### Plate Tectonic Reconstruction Model

The PALEOMAP PaleoAtlas for GPlates consists of 91 paleogeographic maps spanning the Phanerozoic and late Neoproterozoic. The PaleoAtlas can be directly loaded into GPlates as a Time Dependent Raster file. The paleogeographic maps in the PaleoAtlas illustrate the ancient configuration of the ocean basins and continents, as well as important topographic and bathymetric features such as mountains, lowlands, shallow sea, continental shelves, and deep oceans.


Access the plate tectonic reconstruction model variable (`"model"`) of the "paleomap" dataset with a `fetch()` function:

```{r}
 maps <- fetch("paleomap", "model")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
maps <- fetch(dat = "paleomap", var = "model", dir, verbose=FALSE)

```

#### Resolution

none

#### Archive size

paleomap_model_v19o_r1c: 5.11 MB

paleomap_model_v3-GPlates: 5.11 MB

#### Versions

v3-GPlates

v19o_r1c 

#### Licence


[CC-BY](https://creativecommons.org/licenses/by/4.0/)

### PaleoAtlas paleorasters

The PALEOMAP PaleoAtlas for GPlates consists of 91 paleogeographic maps spanning the Phanerozoic and late Neoproterozoic. The PaleoAtlas can be directly loaded into GPlates as a Time Dependent Raster file. The paleogeographic maps in the PaleoAtlas illustrate the ancient configuration of the ocean basins and continents, as well as important topographic and bathymetric features such as mountains, lowlands, shallow sea, continental shelves, and deep oceans.

This dataset requires the 'ncdf4' package to load. 

Access the paleoatlas paleorasters variable (`"paleoatlas"`) of the "paleomap" dataset with a `fetch()` function:

```{r}
 paleoras <- fetch("paleomap", "paleoatlas")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
paleoras <- fetch(dat = "paleomap", var = "paleoatlas", dir, verbose=FALSE)

```

#### Resolution 

0.5

0.1

#### Archive size

paleomap_paleoatlas_20160216v3_0.5: 52.4 MB

paleomap_paleoatlas_20160216v3_0.1: 6.04 MB

#### Version

20160216v3

#### Licence


[CC-BY](https://creativecommons.org/licenses/by/4.0/)


### Administrative boundaries for the PaleoMAP project

Present-day administrative boundaries and coastlines used as reference in reconstructed maps. The loaded data have the class `SpatialLinesDataFrame`, which can be rotated back in time using the reconstruct() function. 

Access the present-day administrative boundaries variable (`"adminlines"`) of the "paleomap" dataset with a `fetch()` function:

```{r}

 paleopc <- fetch("paleomap", "adminlines")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
paleopc <- fetch(dat = "paleomap", var = "adminlines", dir, verbose=FALSE)

```

#### Archive size


paleomap_adminlines_19.0.zip: 5.3 MB

#### Version

19o

#### Licence


[CC-BY](https://creativecommons.org/licenses/by/4.0/)


### PaleoMAP PaleoCoastlines

Reconstructions of paleocoastlines based on maximum transgressive surfaces based on the [PaleoDEMs](#paleodem-digital-elevation-models) and [Paleobiology Database data] as described by Kocsis and Scotese (In Press). The loaded data have the class `SpatialArray`, with `SpatialPolygonsDataFrame`-class objects as elements. Rows represent different ages, columns are `margin` and `coast`, indicating reconstructions of the continental margins and the coastlines, respectively.

Access the paleocoastlines variable (`"paleocoastlines"`) of the "paleomap" dataset with a `fetch()` function:

```{r}

 paleocoast <- fetch("paleomap", "paleocoastlines")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

The argument `shapes` (logical) indicates whether the original shapefiles should be used for loading the dataset, or the R binaries (fast).

The argument `finer` (logical) indicates whether those polygon-segments that are farther than 3 degrees in long-lat space, should be resampled. This is necessary for accurate projection changes, or the edges of the map might show some artifacts.

```{r}
paleocoast <- fetch(dat = "paleomap", var = "paleocoastlines", dir, verbose=FALSE, shapes=FALSE, finer=TRUE)

```

#### Archive size


paleomap_paleocoastlines_v7.zip: 17.1 MB

#### Version

v7

#### Licence


[CC-BY](https://creativecommons.org/licenses/by/4.0/)



### References

[www.scotese.com](URL: http://www.scotese.com//)

Scotese, C. R. Wright, N. (2018). PALEOMAP Paleodigital Elevation Models (PaleoDEMS) for the Phanerozoic.[www.earthbyte.org/paleodem-resource-scotese-and-wright-2018](URL: https://www.earthbyte.org/paleodem-resource-scotese-and-wright-2018/)

Scotese, C. R. (2016) Tutorial: PALEOMAP PaleoAtlas for GPlates and the PaleoData Plotter Program. [www.earthbyte.org/paleomap-paleoatlas-for-gplates](URL: https://www.earthbyte.org/paleomap-paleoatlas-for-gplates//)

Kocsis, Á. T., & Scotese, C. R. (In Press). Mapping paleocoastlines and continental flooding during the Phanerozoic. Earth-Science Reviews, 103463. [https://doi.org/10.1016/j.earscirev.2020.103463](https://doi.org/10.1016/j.earscirev.2020.103463)
