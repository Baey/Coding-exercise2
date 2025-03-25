clear all
close all

load "../c++-model/err.dat"

plot(err, 'b-*')
xlabel("n")
ylabel("err")
title("Approximation Error")
legend('err', 'location', 'northeast')
grid on

max_err = max(err);
fprintf("max(err) = %8.3e\n", max_err);


