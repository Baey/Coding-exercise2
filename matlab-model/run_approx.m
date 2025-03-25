if exist("coeffs.txt", 'file')
    delete coeffs.txt
end

diary coeffs.txt
% approx;
approx_cheb;

% optionally, use optimized coeffs:
% ctave approx_opt.m |& tee coeffs.txt

if exist("hex_coeffs.txt", 'file')
    delete hex_coeffs.txt
end
diary hex_coeffs.txt
print_coeffs;
% 
% if exist("bin_coeffs.txt", 'file')
%     delete bin_coeffs.txt
% end
% diary bin_coeffs.txt
% print_coeffs_bin;
