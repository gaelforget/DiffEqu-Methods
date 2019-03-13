using Interact;
using Colors; Plots;
C = randn(1)[1]
@manipulate for Time = 0:0.1:10
    plot([t->sin(2*pi*t)/(2*pi)+C*t],0,Time)
end