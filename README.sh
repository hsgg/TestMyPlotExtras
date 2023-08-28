#!/bin/sh

# Here we illustrate the segmentation fault that occurs when loading
# `MyPlotExtras` from another package.
#
# I have only tested this with Julia-1.9.3 on Apple M1.
#
# To show the problem, `dev` the `MyPlotExtras` package in the
# `TestMyPlotExtras` package:

cd TestMyPlotExtras

julia --project=. -e 'using Pkg; Pkg.develop(path="../MyPlotExtras")'

# Then, try to load `TestMyPlotExtras`:
julia --project=. -e 'using TestMyPlotExtras'
