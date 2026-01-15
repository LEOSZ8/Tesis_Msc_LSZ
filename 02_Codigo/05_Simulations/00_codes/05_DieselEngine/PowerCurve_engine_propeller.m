HP_e_kW=HP_e./(1.341);
HP_h_kW=HP_h./(1.341);
%%
AZ = tiledlayout(2,2);
 
nexttile
plot(RPM_e,HP_e_kW,'Linewidth',1.5,'Color',[0.44 0.46 0.42])
hold on
plot(RPM_h,HP_h_kW,'Linewidth',1.5,'Color',[0 0 0])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([700 1600])
ylim([0 2500])
%yticks(-750:250:750)
ylabel('Potencia [kW]')
xlabel('Velocidad [RPM]')
legend('{P}_{m}(Motor)','{P}_{m}(Hélice)','Linewidth',2,'Location','northwest','FontSize',8)