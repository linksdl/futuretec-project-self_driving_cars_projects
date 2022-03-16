%Operating frequency (Hz)
fc = 77.0e9;

%Transmitted power (W)
Pt = 3e-3;

%Antenna Gain (linear)
G =  10000;

%Minimum Detectable Power
Ps = 1e-10;

%RCS of a car
RCS = 100;

%Speed of light
c = 3*10^8;

%TODO: Calculate the wavelength
wave_length = c/fc;

%TODO : Measure the Maximum Range a Radar can see. 
R_temp = Ps * G*G * wave_length * wave_length * RCS / (Ps * ((4*pi) ^ 3));
R_max  = sqrt(sqrt(R_temp));
disp(R_max);
