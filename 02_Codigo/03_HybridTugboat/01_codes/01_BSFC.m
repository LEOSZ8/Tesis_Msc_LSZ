%% BSFC - Motor MTU 16V 4000 P63
clear
clc


BSFC = [    329,    259,     212,    199,    197]';
POU  = [    260,    520,    1040,   1560,   2080]';
Pe=linspace(0,2080,200);

T = table(BSFC,POU)

stem(POU,BSFC,'-.','LineWidth', 1.5)
grid on
ylabel('BSFC [g/kWh]')
xlabel('Power [kW]')
ax = gca;
ax.XAxis.FontSize = 14; % or whatever
ax.XAxis.FontName = 'Times New Roman';
ax.YAxis.FontSize = 14; % or whatever
ax.YAxis.FontName = 'Times New Roman';


coeficientes= polyfit(POU,BSFC,4);
hold on
sfc_16V4000=polyval(coeficientes,Pe);
plot(Pe,sfc_16V4000,'LineWidth', 1.5)
xlim([0 2100])
%legend('Datos Motor Diesel Cat 3516B')
hold off