using Colors;
using Plots;
gr();

# dX / dt = cos(2*pi*t)+randn(1), X(0) = 0
function f(t)
    f = cos(2.0*pi*t)+0.1*randn(1)[1];
end

function manual(stop,stepsize)
    # stepsize
    h = stepsize;

    # t values
    t = 0:h:stop;

    # number of points
    N = size(t)[1];

    # f(t) = X'(t) values
    f_list = zeros(1,N);
    for i = 1:N
        f_list[i] = f(t[i]);
    end
    
    # Euler method
    X = zeros(1,N);
    for j = 2:N
        X[j] = X[j-1] + h*f_list[j-1];
    end

    # Vectorize
    manual_plot = [t,X'];
    return manual_plot;
end