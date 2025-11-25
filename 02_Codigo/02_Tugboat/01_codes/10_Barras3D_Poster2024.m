%Perfil Operacional TUG
%Perfil operacional del TUG para un día con una maniobra
clc
clear

%Perfil actual TUG
P_engine_prime=1825;

% BAR GRAPHIC


P_MainDiesel_bar3    = (2e-3)*P_engine_prime*[       0,      0,       0,     0.72,      0,        0,       0,       0,      0,      0,    0]';
P_Diesel_bar3        = (2e-3)*P_engine_prime*[       0,      0,    0.56,        0,   0.45,        0,       0,       0,      0,      0,    0]';
P_batt_bar3          = (2e-3)*P_engine_prime*[    0.05,   0.15,       0,        0,      0,     0.25,    0.16,    0.15,   0.12,   0.05,    0]';
Time_bar3            =                  [ 8,     9,     10,     11,   12,   13,    14,    15,    16,    17,   18]';
label_y = {'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'};

y=Time_bar3;
z=[P_batt_bar3 P_Diesel_bar3 P_MainDiesel_bar3];
b=bar3(y,z);
zlim([0 3])
zticks(0.5:1:3.5)
m={'SBM','FSM','TM'};    % systems
xticklabels(m)
xtickangle(-45)
yticklabels(label_y)
ytickangle(30)
zlabel('Potencia [MW]','FontSize',14,'FontName','Times New Roman')
b(1).FaceColor=[0.49,0.87,0.49];
b(2).FaceColor=[0.42,0.68,0.87];
b(3).FaceColor=[0.40,0.43,0.39];
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';
ax.YAxis.FontSize = 12; % or whatever
ax.YAxis.FontName = 'Times New Roman';
ax.ZAxis.FontSize = 12; % or whatever
ax.ZAxis.FontName = 'Times New Roman';
