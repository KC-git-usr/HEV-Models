clear all
M_glider = 1746;  % glider mass, kg
M_passengers = 180; % driver mass kg
C_D = 0.35;    % drag coefficient
C_0 = 0.015;   % rolling resistance coefficient
A_F = 1.93;    % frontal area, m^2
eta_ess = 0.8; % energy storage subsystem round-trip efficiency
r_wheel = 0.2794; % wheel radius, m
P_eng_min = 5000.0; % min engine power, W
P_eng_max = 85000.0; % max engine power, W
G_diff = 0.268;     % differential gear ratio
w_eng_min_rpm = 1000; % minimum engine speed in rpm
E_batt_kW = 2.0;   % battery capacity, kW
SOC_init = 0.5; % initial SOC
m_batt = 25; % battery mass density, kg/kWh
G_elec = 1; % gear ratio for motor
G_cvt_min = 0.5;

% physical constants
rho = 1.225; % density of air, kg/m^3
g = 9.81; % acceleration due to gravity,  m/s^2

% unit conversions
meters_to_mi = 1/1609; % meters to miles
grams_per_hr_to_gal_per_s = 9.778e-8;  % g/hr to gal/s
mi_per_hr_to_m_per_s = 0.44704; % mi/hr to m/s

% calculated constants

w_eng_min = w_eng_min_rpm * 2 * pi / 60;

v_veh_min = G_cvt_min * G_diff * r_wheel * w_eng_min;  % smallest vehicle speed for engine to stay engaged, in m/s
E_ess_max = E_batt_kW * 1000 * 3600; % energy storage capacity in J
M_batt = m_batt* E_batt_kW; % battery mass in kg
M_veh = M_glider + M_passengers + M_batt;

% load drive cycles and engine map
load hwfet
load ftp75
load us06
load la92
load udds
load wltc

load eng_map

% wrap some parameters into structure "param"
param.v_veh_min = v_veh_min ;
param.P_eng_min = P_eng_min ;
param.P_eng_max = P_eng_max ; 
param.G_cvt_min = G_cvt_min ;
param.G_diff = G_diff ;    
param.r_wheel = r_wheel ;