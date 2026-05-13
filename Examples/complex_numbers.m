% complex_numbers.m — Complex number arithmetic and built-ins.
%
% Covers: real, imag, abs, angle, conj, 4i syntax, Euler's formula,
%         complex multiplication/division, powers.
%
% Run:
%   ccalc complex_numbers.m

fprintf('--- Creating complex numbers ---\n')
z1 = 3 + 4i
z2 = 1 - 2i
z3 = complex(0, 1)

fprintf('\n--- Parts ---\n')
fprintf('real(z1)  = %g\n', real(z1))
fprintf('imag(z1)  = %g\n', imag(z1))
fprintf('abs(z1)   = %g   (modulus)\n', abs(z1))
fprintf('angle(z1) = %.4f rad\n', angle(z1))

fprintf('\n--- Conjugate ---\n')
z1c = conj(z1)

fprintf('\n--- Arithmetic ---\n')
add_result  = z1 + z2
sub_result  = z1 - z2
mul_result  = z1 * z2
div_result  = z1 / z2

fprintf('\n--- Powers ---\n')
i_sq = (1i)^2
z1_sq = z1^2

fprintf('\n--- Euler''s formula: e^(i*theta) = cos(theta) + i*sin(theta) ---\n')
theta = pi / 3;
euler = cos(theta) + 1i * sin(theta)
expected_re = cos(theta)
expected_im = sin(theta)

fprintf('\n--- Conjugate transpose (z'') ---\n')
zc = z1'

fprintf('\n--- Polar form ---\n')
r   = abs(z1);
phi = angle(z1);
fprintf('z1 in polar: r=%.4f, phi=%.4f rad (%.2f deg)\n', r, phi, phi*180/pi)
z_from_polar = r * (cos(phi) + 1i * sin(phi))
