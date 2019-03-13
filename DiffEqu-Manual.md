# Manually solving a differential equation
## Using `diffequ-manual.jl`
Suppose we are given the following differential equation: 

$$ \dot{X} = \cos{(2\pi t)} + C, X(0) = 0 $$


Where $C$ is an arbitrary number. This differential equation is written in Julia as follows:
```
    dX / dt = f(t),
    where f(t)=cos(2*pi*t)+randn(1)
```
Using separation of variables, we can solve for the original function $X(t) = F(t)$ as shown:

$$ X(t) = \dfrac{1}{2\pi}\sin{2\pi t} + Ct $$

For the scope of Julia, we can define the function $X(t)$ in the following manner:

```
    function X(t)
        X = 1/(2*pi)*sin(2*pi*t)+randn(1)[1]*t;
    end
```

we're interested in the time interval between $t=0$ and $t=10$, with $\Delta t_{step} = 0.1$ In Julia, we can create a $1\times N$ array for these $t$ values using the following code:

```
    t_list = collect(range(0,stop=10,step=0.1))
    N = size(t_list)[1]
```

The `N` variable is used to ensure the array which will store values of $X(t)$ is the same size as `t_list`. We now can create the `X_list` array in the following manner:

```
    X_list = zeros(1,N)
    for j = 1:N
        X_list[j] = X(t_list[j])
    end
```

However, `X_list` is currently a $N\times 1$ array, but we can fix that by running the following line of code:

```
    X_list = X_list'
```

Finally, if we wish to plot our $X(t)$ function, we can do so using the `Plots.jl` package and the `gr()` back-end.

```
    using Plots, gr();
    plot(t_list,X_list,lw=3,label="X(t)")
```

The `diffequ-manual.jl` file implements this method to plot the solution of the differential equation.