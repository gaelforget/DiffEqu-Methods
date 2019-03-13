using DifferentialEquations;
using Plots; gr();
C = randn(1)[1];
f(u,p,t) = cos(2*pi*u);
u0 = 0.0;
tspan = (0.0,10.0);
prob = ODEProblem(f,u0,tspan)
sol = solve(prob,saveat=0.1);
plot(sol,label="Numerical Solution")