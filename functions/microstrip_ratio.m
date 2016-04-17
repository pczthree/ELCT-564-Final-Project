function W_d = microstrip_ratio( Z0, eps_r )
%microstrip_ratio Given characteristic impedance the ratio of strip width
%to dielectric height can be calculated
%   Equation 3.197

if Z0 < 100
    W_d = microstrip_ratio_leq2(Z0, eps_r);
    if W_d > 2
        W_d = microstrip_ratio_gt2(Z0, eps_r);
    end
else
    W_d = microstrip_ratio_gt2(Z0, eps_r);
    if W_d < 2
        W_d = microstrip_ratio_leq2(Z0, eps_r);
    end
end

function ratio = microstrip_ratio_leq2( Z0, eps_r )
%microstrip_ratio Given characteristic impedance the ratio of strip width
%to dielectric height can be calculated
%   Equation 3.197

A = (Z0/60)*sqrt((eps_r + 1)/2) + ...
    ((eps_r - 1)/(eps_r + 1))*(0.23 + 0.11/eps_r);

ratio = 8*exp(A)/(exp(2*A) - 2);

function ratio = microstrip_ratio_gt2( Z0, eps_r )
%microstrip_ratio Given characteristic impedance the ratio of strip width
%to dielectric height can be calculated
%   Equation 3.197

B = 377*pi/(2*Z0*sqrt(eps_r));

ratio = B - 1 - log(2*B - 1) + ...
    ((eps_r - 1)/2*eps_r)*(log(B - 1) + 0.39 - 0.61/eps_r);