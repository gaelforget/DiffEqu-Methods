# Solving Differential Equations: Different Methods

This repository contains two `.jl` function files and one `.ipynb` Jupyter notebook:

* `.jl` files
    * `diffequ-manual.jl`
    * `diffequ-pkg.jl`
* `.ipynb` files
    * `DiffEqu-Methods.ipynb`

Below are the descriptions of each file:

## `diffequ-manual.jl`

This function file solves a differential equation manually (as the name suggests) using the Euler Method, then creates a plot of the solution.

## `diffequ-pkg.jl`

This function file solves a different differential equation using the `DifferentialEquations.jl` package, and creates a plot of the solution.

## `DiffEqu-Methods.ipynb`

This notebook details the funcitonalities of the two `.jl` files which solve an equation, and explains the differences between the two approaches. It also compares the two solutions, and the analytical solution of the latter solution on the same plot. Finally, it creates an interactive plot of all three solutions mentioned, where the user can alter the the time interval.
