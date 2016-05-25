---
title       : MPG Dataset Transformation
subtitle    : Rental Car Customer Choice Option
author      : Sandra Ezidiegwu
framework   : html5slides        # {io2012, html5slides, shower, dzslides, ...}
knit        : slidify::knit2slides
---

## Rental Car Use made Simple
With the use of this app, one can easily navigate through their preferred rental car choices. 

```r
library(shiny)
```

```
## Warning: package 'shiny' was built under R version 3.2.4
```

```r
library(ggplot2)
```

```
## Warning: package 'ggplot2' was built under R version 3.2.4
```

```r
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
car.options <- select(mpg, manufacturer, model, year, cty, hwy, class)
head(car.options) 
```

```
## Source: local data frame [6 x 6]
## 
##   manufacturer model  year   cty   hwy   class
##          (chr) (chr) (int) (int) (int)   (chr)
## 1         audi    a4  1999    18    29 compact
## 2         audi    a4  1999    21    29 compact
## 3         audi    a4  2008    20    31 compact
## 4         audi    a4  2008    21    30 compact
## 5         audi    a4  1999    16    26 compact
## 6         audi    a4  1999    18    26 compact
```

--- .custom

Often times you find that you are stuck with car options that don't necessarily fit you need

```r
{"/Users/sandraezidiegwu/Downloads/cars.png"}
```

```
## [1] "/Users/sandraezidiegwu/Downloads/cars.png"
```

--- .custom &custom


