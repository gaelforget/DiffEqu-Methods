using Plots;
gr();

# dX / dt = cos(2*pi*t)+randn(1), X(0) = 0
C = randn(1)[1];
function X(t)
    X = 1/(2*pi)*sin(2*pi*t) + C*t;
end


t_list = collect(range(0,stop=10,step=0.1));
N = size(t_list)[1];

X_list = zeros(1,N);
for j = 1:N
    X_list[j] = X(t_list[j]);
end

X_list = X_list';

plot(t_list,X_list,lw=3,label="X(t)")