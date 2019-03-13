# Solving Differential Equations: Different Methods

This repository contains three `.jl` function files and two `.ipynb` Jupyter notebooks:

* `.jl` files
** `diffequ-manual.jl`
** `diffequ-slide.jl`
** `diffequ-pkg.jl`
* `.ipynb` files
** `DiffEqu-Methods.ipynb`
** `DiffEqu-Slider.ipynb`

Below are the descriptions of each file:

## `diffequ-manual.jl`

This function file solves a differential equation manually (as the name suggests) using separation of variables, then creates a plot of the solution.

## `diffequ-slide.jl`

This function file creates a plot of the solution from `diffequ-manual.jl`, but this time with an interactive widget which alters the time interval, and adjusts the plot size accordingly.

## `diffequ-pkg.jl`

This function file solves a different differential equation using the `DifferentialEquations.jl` package, and creates a plot of the solution.

## `DiffEqu-Methods.ipynb`

This notebook details the funcitonalities of the two `.jl` files which solve an equation, and explains the differences between the two approaches. It also compares the two solutions on the same plot (thought they're not meant to be equal solutions).

## `DiffEqu-Slider.ipynb`

This notebook demonstrates the creation of a plot with an interactive slider widget using the `Interact.jl` package.
