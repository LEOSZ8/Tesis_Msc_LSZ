AZ = tiledlayout(2,1);

nexttile
plot(time0,va,'Linewidth',1,'Color',[0.23 0.33 0.71])
hold on
plot(time0,vb,'Linewidth',1,'Color',[0.42 0.68 0.87])
hold on
plot(time0,vc,'Linewidth',1,'Color',[0.6 0.62 0.58])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
%xlim([1.4 1.6])
ylim([-750 750])
%yticks(-750:250:750)
ylabel('Voltaje [V]')
legend('{v}_{a}(t)','{v}_{b}(t)','{v}_{c}(t)','Linewidth',2,'Location','southeast','FontName', 'Times New Roman','Fontangle','italic','FontSize',12)

nexttile
plot(time1,wrpm1,'Linewidth',1.5,'Color',[0.23 0.33 0.71])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
%xlim([1.4 1.6])
%ylim([-750 750])
%yticks(-750:250:750)
ylabel('Velocidad [RPM]')
xlabel('Tiempo [s]')
legend('{\omega}_{mec}(t)','Linewidth',2,'Location','southeast','FontName', 'Times New Roman','Fontangle','italic','FontSize',12)

%% Rangos FSM

AZ = tiledlayout(2,2);

nexttile
plot(time0,va,'Linewidth',1,'Color',[0.23 0.33 0.71])
hold on
plot(time0,vb,'Linewidth',1,'Color',[0.42 0.68 0.87])
hold on
plot(time0,vc,'Linewidth',1,'Color',[0.6 0.62 0.58])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([10.5 12])
ylim([-750 750])
%yticks(-750:250:750)
ylabel('Voltaje [V]')
legend('{v}_{a}(t)','{v}_{b}(t)','{v}_{c}(t)','Linewidth',2,'Location','southeast','FontName', 'Times New Roman','Fontangle','italic','FontSize',8)

nexttile
plot(time0,va,'Linewidth',1.5,'Color',[0.23 0.33 0.71])
hold on
plot(time0,vb,'Linewidth',1.5,'Color',[0.42 0.68 0.87])
hold on
plot(time0,vc,'Linewidth',1.5,'Color',[0.6 0.62 0.58])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([19.8 20])
ylim([-750 750])
yticks(-750:250:750)
ylabel('Voltaje [V]')
legend('{v}_{a}(t)','{v}_{b}(t)','{v}_{c}(t)','Linewidth',2,'Location','southwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',8)