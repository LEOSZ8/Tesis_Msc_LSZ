clc
clear
%%
load('soc_1m.mat');
load('time_1m.mat');
load('voc_1m.mat');
load('soc_2m.mat');
load('time_2m.mat');
load('voc_2m.mat');

t=t.*(1/3600);
soc=soc.*100;
t_2m=t_2m.*(1/3600);
soc_2m=soc_2m.*100;
%%
AZ = tiledlayout(2,2);


nexttile
plot(t,soc,'Linewidth',2,'Color', [0.8500 0.3250 0.0980])
hold on
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([0 6])
xticks(0:1.2:6)
ylim([0 100])
yticks(0:25:100)
ylabel('State of Charge [%]')
xlabel('Time [h]')
title ('SoC - Battery Bank')

nexttile
plot(t,voc,'Linewidth',2,'Color',[0 0.6 0.3])
hold on
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([0 6])
xticks(0:1.2:6)
ylim([650 780])
yticks(650:30:780)
ylabel('Voltage [V]')
xlabel('Time [h]')
title ('Discharge - Battery Bank')

nexttile
plot(t_2m,soc_2m,'Linewidth',2,'Color', [0.8500 0.3250 0.0980])
hold on
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([0 2.5])
ylabel('State of Charge [%]')
xlabel('Time [h]')
title ('SoC - Battery Bank')


nexttile
plot(t_2m,voc_2m,'Linewidth',2,'Color',[0 0.6 0.3])
hold on
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([0 2.5])
ylabel('Voltage [V]')
xlabel('Time [h]')
title ('Discharge - Battery Bank')
