clear
clc
%%%% Controlador H_DeltaVc
Ib= 87; % Caso Vin= 570 V
C= 1200e-6;

s = tf([1,0],[1]);

Kp=1;
Ki=1;
C_pi= (Kp*s+Ki)/s;


H_Deltavc= Ib/(s*C);
sisotool(H_Deltavc,C_pi)
%%%%%%%% Controlador DeltaVc
%%%%%%%% Kp = 0.0059881
%%%%%%%% Ki = 0.0059881*132.2

%% Controlador de Corriente Ib
clear
clc

Vc = 500;
Lb = 2e-3;

s = tf([1,0],[1]);

Kp=1;
Ki=1;
C_pi= -(Kp*s+Ki)/s;


H_Ib= -Vc/(s*Lb);
sisotool(H_Ib,C_pi)

%%%%%%%% Controlador Ib
%%%%%%%% Kp = 0.019925
%%%%%%%% Ki = 0.019925*1238