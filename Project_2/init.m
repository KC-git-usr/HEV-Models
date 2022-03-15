clear all
% motor parameters
P = 8; % number of poles
lambda_m = 0.266;  %flux constant V-s/rad
rs = 0.07;  % stator resistance in ohms
Ld =  0.8e-3; %d-axis inductance in H
Lq =  1.0e-3; %q-axis inductance in H

% Filter parameters
L = 5e-6; % inductance in H
R = 0.01; % resistance in ohms
C = 1e-3; % capacitance in F

V_batt = 600;  % battery voltage

% Current Control gains
Kq = 2;
Kd = 2;

% define electrical rotor speed
omega_r = 2000*2*pi/60 * P/2; % rad/s


% set q-axis current
I_qs_star = 0;  %replace

%set d-axis current to zero
I_ds_star = 0;





