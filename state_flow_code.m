clc

time = out.time;
input = out.input;
output = out.output;

%% 1

figure("Name",'Stateflow Chart'), set(gcf, 'Color', 'White')
plot(input, linewidth = 3, color = [0 0.4 0.7])
hold on
plot(output, linewidth = 3, color = [0.635 0.078 0.184])

grid on, grid minor
title('Time Series Plot', 'FontWeight', 'bold', 'FontSize', 17)
xlabel('Time (Seconds)', 'FontSize', 15), ylabel('Amplitude', 'FontSize', 15)
xlim([0 5])

legend('Step Input','Output', fontsize = 12)

