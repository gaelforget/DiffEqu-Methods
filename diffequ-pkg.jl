using DifferentialEquations;
using Colors;
using Plots; gr();

function pkg(stop,stepsize)
    f(u,p,t) = cos(2*pi*t);
    u0 = 0.0;
    tspan = (0.0,stop);

    prob = ODEProblem(f,u0,tspan);
    sol = solve(prob,saveat=stepsize);
end