clear
clc

SOx_global = [4.5, 3.5, 0.5,0.5];
SOx_ECA = [1.5, 1, 0, 0];
Year_global =[2000,2012,2020,2030];
Year_ECA =[2000,2010,2015,2030];

stairs(Year_global,SOx_global,'Linewidth',3)
grid on
xlim([2000 2030])
ylim([0 5])
hold on
stairs(Year_ECA,SOx_ECA,'Linewidth',3)
grid on
ylabel('Sulphur content in fuel (SO_x) [%]')
xlabel('Year')
legend('Global','SO_x ECA','Linewidth',2,'Location','northeast')