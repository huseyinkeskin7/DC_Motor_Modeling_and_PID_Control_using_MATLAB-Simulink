clc, close all


J = 0.05;   % kg.m^2
b = 0.05;   % motor viscousfriction
K_e = 0.5;   % V/rad/sec (electromotiveforceconstant)  
K_t = 0.8;   % N.m/Amp  (motor torqueconstant)  
R = 1.5;    % Ohm
L = 0.8;    % H

% syms s
s = tf('s');

root_locus_kp = 20*s/(s^3 + 3.875*s^2 + 11.87*s + 1);

figure(1), set(gcf, 'Color', 'w')
rlocus(root_locus_kp)
title("Root Locus for K_{p}","FontSize",13)

root_locus_ki = 20/(s^2 + 3.875*s + 12.87);

figure(2), set(gcf, 'Color', 'w')
rlocus(root_locus_ki);
title("Root Locus for K_{i}","FontSize",13)

root_locus_kd = 20*s^2/(s^3 + 2.875*s^2 + 12.87*s + 1);

figure(3), set(gcf, 'Color', 'w')
rlocus(root_locus_kd);
title("Root Locus for K_{d}","FontSize",13)

figure(4), set(gcf, 'Color', 'w')
bode(root_locus_kp)
title("Bode Diagram for K_{p}","FontSize",13)

figure(5), set(gcf, 'Color', 'w')
bode(root_locus_ki)
title("Bode Diagram for K_{i}","FontSize",13)

figure(6), set(gcf, 'Color', 'w')
bode(root_locus_kd)
title("Bode Diagram for K_{d}","FontSize",13)
