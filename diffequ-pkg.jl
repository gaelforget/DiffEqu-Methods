using DifferentialEquations;
using Plots; gr();

f(u,p,t) = cos(2.0*pi*t);
u0 = 0.0;
tspan = (0.0,10.0);

prob = ODEProblem(f,u0,tspan);
sol = solve(prob,saveat=0.1);
plot(sol,label="F(t)")