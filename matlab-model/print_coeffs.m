% Convert signed coeffs to hex:
load coeffs.txt

k = coeffs(:,1);
a = coeffs(:,2);
b = coeffs(:,3);
c = coeffs(:,4);

K = length(k);

% coeff a:
A_I =  1;
A_F = 18;
A_W = A_I + A_F; % (s1.18)

% coeff b:
B_I =  3;
B_F = 12;
B_W = B_I + B_F; % (s3.12)

% coeff c:
C_I =  3;
C_F = 7;
C_W = C_I + C_F; % (s3.7)

a_q = round(a * (2^A_F));
b_q = round(b * (2^B_F));
c_q = round(c * (2^C_F));

A = zeros(K,1);
B = zeros(K,1);
C = zeros(K,1);

for k = 0 : K-1
    i = k+1;
    
    A(i) = mod(a_q(i), 2^A_W);
    B(i) = mod(b_q(i), 2^B_W);
    C(i) = mod(c_q(i), 2^C_W);

    fprintf("%3d  0x%08x  0x%08x  0x%08x\n", k, A(i), B(i), C(i));
end
