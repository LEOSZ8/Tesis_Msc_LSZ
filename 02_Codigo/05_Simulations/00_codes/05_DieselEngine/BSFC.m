BSFCgkWh = BSFCgkWh *(1e12)
%%

PowerkW  = PowerkW * (1e-3)
%%
AZ = tiledlayout(2,2);

nexttile
plot(PowerkW,BSFCgkWh,'-.','Linewidth',1.5,'Color',[0.44 0.46 0.42])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
ylim([0.2 0.3])
ylabel('BSFC [g/kWh]')
xlabel('Potencia [kW]')
legend('Cat 3516B (30° SCAC)','Linewidth',2,'Location','northwest','FontSize',8)