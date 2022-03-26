% TODO : Find the Bsweep of chirp for 1 m resolution
c = 3 * 10 ^ 8; % speed for the linght in meter/sec
delta_r = 1; % range resolution in meters
Bsweep = c / (2 * delta_r);
disp(Bsweep);

% TODO : Calculate the chirp time based on the Radar's Max Range
range_max = 300;
ts = 5.5 * (range_max * 2 / c);
disp(ts);

% TODO : define the frequency shifts 
beat_freq = [0 1.1e6 13e6 24e6];
calculated_range = c *ts * beat_freq / (2 * Bsweep);

% Display the calculated range
disp(calculated_range);