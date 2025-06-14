clc, close all

time = out.time;
input = out.input;
output1 = out.output1;
output2 = out.output2;
output3 = out.output3;
output4 = out.output4;

%% 1

figure("Name",'Comparison of PID1 and PID2'), set(gcf, 'Color', 'White')
plot(input, linewidth = 2, color = [0 0.4 0.7])
hold on
plot(output1, linewidth = 1.2, color = [0.635 0.078 0.184])
hold on
plot(output2, linewidth = 2, color = [0.2745 0.4392 0.0588])

grid on, grid minor
title('Time Series Plot', 'FontWeight', 'bold', 'FontSize', 17)
xlabel('Time (Seconds)', 'FontSize', 15), ylabel('Amplitude', 'FontSize', 15)
xlim([0 7])

legend('Step Input','for P1 = 1, I1 = 0, D1 = 0', 'for P2 = 50, I2 = 0, D2 = 0', fontsize = 12)

%% 2

figure("Name",'Adding Derrivative Constant, Kd'), set(gcf, 'Color', 'White')
plot(input, linewidth = 2, color = [0 0.4 0.7])
hold on
plot(output2, linewidth = 1.3, color = [0.635 0.078 0.184])
hold on
plot(output3, linewidth = 2, color = [0.2745 0.4392 0.0588])

grid on, grid minor
title('Time Series Plot', 'FontWeight', 'bold', 'FontSize', 17)
xlabel('Time (Seconds)', 'FontSize', 15), ylabel('Amplitude', 'FontSize', 15)
xlim([0 5])

legend('Step Input','for P2 = 50, I2 = 0, D2 = 0','for P2 = 50, I2 = 0, D2 = 3', fontsize = 12)

%% 3

figure("Name",'Adding Integral Constant, Ki'), set(gcf, 'Color', 'White')
plot(input, linewidth = 1.5, color = [0 0.4 0.7])
hold on
plot(output3, linewidth = 1.2, color = [0.635 0.078 0.184])
hold on
plot(output4, linewidth = 2, color = [0.2745 0.4392 0.0588])

grid on, grid minor
title('Time Series Plot', 'FontWeight', 'bold', 'FontSize', 17)
xlabel('Time (Seconds)', 'FontSize', 15), ylabel('Amplitude', 'FontSize', 15)
xlim([0 .5])
legend('Step Input','for P2 = 50, I2 = 0, D2 = 3','for P2 = 50, I2 = 5, D2 = 3', fontsize = 12)

