clear
clc
load('TIER1.mat');
load('TIER2.mat');
load('TIER3.mat');
load('time1.mat');
load('time2.mat');
load('time3.mat');

plot(time1,TIER1,'Linewidth',3)
hold on
plot(time2,TIER2,'Linewidth',3)
hold on
plot(time3,TIER3,'Linewidth',3)
grid on
xlim([0 2200])
xticks(0:200:2200)
ylabel('Nitrogen oxide limit (NO_x) [g/kWh]')
xlabel('Rated Engine Speed (rpm)')
legend('TIER I','TIER II (Global)','TIER III (NO_x Emission Control Areas)','Linewidth',2,'Location','northeast')