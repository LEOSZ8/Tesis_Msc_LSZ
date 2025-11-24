%% BSFC - Motor Cat 3516 B
clear
clc

BSFC = [ 305.77, 265.89, 237.65,  226.9, 224.09]';
POU  = [     82,    410,    820,   1230,   1640]';
Pe=linspace(0,1640,200);

T = table(BSFC,POU)

stem(POU,BSFC,'-.','LineWidth', 1.5)
grid on
ylabel('BSFC (g/kWh)')
xlabel('Power (kW)')
ax = gca;
ax.XAxis.FontSize = 14; % or whatever
ax.XAxis.FontName = 'Times New Roman';
ax.YAxis.FontSize = 14; % or whatever
ax.YAxis.FontName = 'Times New Roman';


coeficientes= polyfit(POU,BSFC,4);
hold on
sfc_3516B=polyval(coeficientes,Pe);
plot(Pe,sfc_3516B,'LineWidth', 1.5)
xlim([0 1700])
%legend('Datos Motor Diesel Cat 3516B')
hold off