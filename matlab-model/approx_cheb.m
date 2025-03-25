clear all
close all

N = 128;
n = 0:N-1;
x = 2*(n/N);

m = 7;
num_subintervals = 2^m;
subinterval_size = 2/num_subintervals;

a = zeros(1, N);
b = zeros(1, N);
c = zeros(1, N);

f = @(x) sin(2*x - pi/4);

for sub = 0:num_subintervals-1
    xm = sub * subinterval_size; % Start of subinterval
    
    % Chebyshev nodes (eq. 6)
    tau0 = cos(pi/6);   % i=0
    tau1 = cos(pi/2);   % i=1
    tau2 = cos(5*pi/6); % i=2
    
    % Equations 19-21 from paper
    x0 = xm + (tau0 + 1) * 2^(-m-1);
    x1 = xm + 2^(-m-1);
    x2 = xm + (tau2 + 1) *2^(-m-1);
    
    % Evaluate function at nodes
    y0 = f(x0);
    y1 = f(x1);
    y2 = f(x2);
    
    % Apply to all points in this subinterval
    indices = find(x >= xm & x < xm + subinterval_size);

    % Calculate coefficients (Equations 16-18 from paper)
    a(indices) = (1/3)*y0*(2-sqrt(3)) - (1/3)*y1 + (1/3)*y2*(2+sqrt(3));
    b(indices) = (1/6)*y0*(sqrt(3)-4)*2^(m+2) + (1/3)*y1*2^(m+4) - (1/6)*y2*(sqrt(3)+4)*2^(m+2);
    c(indices) = (1/3)*(y0 - 2*y1 + y2)*2^(2*m+3);
end

% Plot the coefficients
close all
plot (x, a, 'b-*', x, b, 'r-*', x, c, 'g-*')
xlabel("x")
ylabel("coeff")
title("Approximation coefficients for f(x) = sin((2*x)-(pi/4))")
legend('a', 'b', 'c', 'location', 'northeast')
axis ([0, 2, -2.2, 2.2])
grid on

fprintf("% %3s  %16s  %16s  %16s\n\n", "k", "a", "b", "c");
for k = 0 : N-1
    i = k+1;
    fprintf('%3d  %+16.12f  %+16.12f  %+16.12f\n', k, a(i), b(i), c(i));
end