function len = microstrip_length( f, phi, W, d, eps_r )
%microstrip_length Computes length of microstrip transmission line required
%for given phase delay at given frequency
%   This function assumes f in Hz and returns length in mm

c = 3E8;
eps_e = (eps_r + 1)/2 + ((eps_r - 1)/2)*(1+12*d/W)^(-1/2);

len = phi*(pi/180)*c/(2*pi*f*sqrt(eps_e));
len = len*1000;

end

