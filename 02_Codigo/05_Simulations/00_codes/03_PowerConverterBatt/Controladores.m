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
%% Controlador vo
clear 
clc

Vc = 500;
Lb = 2e-3;
D  = 0.5;
C  = 1200e-6;  

s = tf([1,0],[1]);

Kp=3.8104;
Ki=783.9;
C_pi= -Kp*(s+Ki)/s;


H_vo_ib= -2*D/(s*C);
sisotool(H_vo_ib,C_pi)

%%%%%%%% Controlador vo
%%%%%%%% Kp = 0.61375
%%%%%%%% Ki = 3.8104*783.9
