
AZ = tiledlayout(3,1);


nexttile
plot(t,vdc,'Linewidth',1.5,'Color', [0 0.6 0.3])
hold on
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
ylim([0 1300])
yticks(0:400:1200)
ylabel('Voltaje [V]')
legend('{v}_{o}(t)','Linewidth',2,'Location','southeast','FontName', 'Times New Roman','Fontangle','italic','FontSize',10)

nexttile
plot(t,va,'Linewidth',1.5,'Color',[0 0.6 0.3])
hold on
plot(t,vb,'Linewidth',1.5,'Color',[0.51 0.87 0.46])
hold on
plot(t,vc,'Linewidth',1.5,'Color',[0.44 0.46 0.42])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
%xlim([1.4 1.6])
ylim([-750 750])
yticks(-750:250:750)
ylabel('Voltaje [V]')
legend('{v}_{a}(t)','{v}_{b}(t)','{v}_{c}(t)','Linewidth',2,'Location','northwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',10)

nexttile
plot(t,Po,'Linewidth',1.5,'Color',[0 0.6 0.3])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
%xlim([1.4 1.6])
ylim([0 600])
%yticks(-750:250:750)
ylabel('Potencia [kW]')
xlabel('Tiempo [s]')
legend('{P}_{o}(3ph)','Linewidth',2,'Location','northwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',10)

%% Imagen ampliada 1.4-1.6 s

AZ = tiledlayout(2,2);


nexttile
plot(t,vdc,'Linewidth',1.5,'Color', [0 0.6 0.3])
hold on
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([1.4 1.6])
ylim([900 1300])
ylabel('Voltaje [V]')
legend('{v}_{o}(t)','Linewidth',2,'Location','southwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',8)
%%
AZ = tiledlayout(2,2);
nexttile
plot(t,va,'Linewidth',1.5,'Color',[0 0.6 0.3])
hold on
plot(t,vb,'Linewidth',1.5,'Color',[0.51 0.87 0.46])
hold on
plot(t,vc,'Linewidth',1.5,'Color',[0.44 0.46 0.42])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([1.4 1.6])
ylim([-750 750])
yticks(-750:250:750)
ylabel('Voltaje [V]')
xlabel('Tiempo [s]')
legend('{v}_{a}(t)','{v}_{b}(t)','{v}_{c}(t)','Linewidth',2,'Location','southwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',8)
%% Imagen ampliada Voltaje y corriente 3ph
AZ = tiledlayout(2,2);


nexttile
plot(t,va,'Linewidth',1.5,'Color',[0 0.6 0.3])
hold on
plot(t,vb,'Linewidth',1.5,'Color',[0.51 0.87 0.46])
hold on
plot(t,vc,'Linewidth',1.5,'Color',[0.44 0.46 0.42])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([1.8 2])
ylim([-750 750])
yticks(-750:250:750)
ylabel('Voltaje [V]')
xlabel('Tiempo [s]')
legend('{v}_{a}(t)','{v}_{b}(t)','{v}_{c}(t)','Linewidth',2,'Location','southwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',8)
%%
AZ = tiledlayout(2,2);

nexttile
plot(t,ia,'Linewidth',1.5,'Color',[0 0.6 0.3])
hold on
plot(t,ib,'Linewidth',1.5,'Color',[0.51 0.87 0.46])
hold on
plot(t,ic,'Linewidth',1.5,'Color',[0.44 0.46 0.42])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([1.8 2])
ylim([-750 750])
yticks(-750:250:750)
ylabel('Corriente [A]')
xlabel('Tiempo [s]')
legend('{i}_{a}(t)','{i}_{b}(t)','{i}_{c}(t)','Linewidth',2,'Location','southeast','FontName', 'Times New Roman','Fontangle','italic','FontSize',8)

%% Imagen ampliada Vdc control PI
AZ = tiledlayout(2,2);


nexttile
plot(t,vdc,'Linewidth',1.5,'Color', [0 0.6 0.3])
hold on
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
xlim([1 1.4])
ylim([700 1400])
yticks(700:100:1400)
ylabel('Voltaje [V]')
legend('{v}_{o}(t)','Linewidth',2,'Location','northwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',8)

%% Imagenes módulo interno
AZ = tiledlayout(3,2);

nexttile
plot(t2,vc1,'Linewidth',1.5,'Color',[0 0.6 0.3])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
%xlim([1.8 2])
ylim([0 1000])
yticks(0:300:1000)
ylabel('Voltaje [V]')
xlabel('Tiempo [s]')
legend('{v}_{c1}(t)','Linewidth',2,'Location','northwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',10)

nexttile
nexttile
plot(t2,vc2,'Linewidth',1.5,'Color',[0.51 0.87 0.46])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
%xlim([1.8 2])
ylim([0 1000])
yticks(0:300:1000)
ylabel('Voltaje [V]')
xlabel('Tiempo [s]')
legend('{v}_{c2}(t)','Linewidth',2,'Location','northwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',10)

nexttile
nexttile
plot(t2,iL,'Linewidth',1.5,'Color',[0 0.6 0.3])
grid on
ax = gca;
set(ax,'Fontsize',10);
ax.GridAlpha = 0.5;
%xlim([1.8 2])
ylim([-150 100])
yticks(-100:50:100)
ylabel('Corriente [A]')
xlabel('Tiempo [s]')
legend('{i}_{L}(t)','Linewidth',2,'Location','southwest','FontName', 'Times New Roman','Fontangle','italic','FontSize',10)
