clc
clear


% Vfull: Voltaje de carga máximo
%  Vexp: Voltaje al final de la zona exponencial
%  Qexp: Carga entregada, al final de la zona exponencial
%  Vnom: Voltaje al final de la zona nominal
%  Qnom: Carga entregada, al final de la zona nominal
% Qfull: Carga entregada, al final de la zona nominal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% voc: Voltaje de circuito abierto (VOC)  [V]
% voc0: Voltaje nominal de la batería     [V]
% K: Voltaje de polarización              [V]
% Q0: Capacidad nominal de la batería     [Ah]
% Q: Carga actual de la batería           [Ah]
% A: Amplitud de zona exponencial         [V]
% B: Constante inversa de tiempo de zona exponencial [1/Ah]
% vbat: Voltaje de la batería             [V]
% R0: Resistencia interna                 [Ohm]
% ibat: Corriente de la batería           [A]

% Battery cell parameters
n_series = 1; % Number of series connected cells
n_parallel = 1; % Number of parallel branches
SOC_init = 1; % initial SOC, range [0,1]

polarizingRshift = 0.1; % Shift polarizing R by 10%


cellNominalV = 38.4; % Voltage at end of nominal zone
cellFullChargeV = 43.8; % Voltage at full SOC
cellExponentialV = 41.4; % Voltage at end of exponential zone

cellRatedCapacity = 50; % Cell rated capacity
cellMaximumCapacity = 50; % Cell maximum capacity
cellNominalCapacity = 35; % Cell capacity at end of nominal zone
cellExponentialCapacity = 1; % Cell capacity at end of exponential zone

cellNominalDischargeI = 50; % Nominal discharge current for cell
cellInternalR =25e-3; % Internal cell resistance

cellLPFTimeConstant = 30; % 30 second time constant for LPF for effect of current on voltage
% Determine Pack Voltages:
NominalPackVoltage = cellNominalV * n_series; % [V] check
PackFullChargeVoltage = cellFullChargeV * n_series; % [V]
PackExponentialZoneVoltage = cellExponentialV * n_series; % [V]

% Determine Pack Capacities:
PackRatedCapacity = cellRatedCapacity * n_parallel; % [Ah]
MaxPackCapacity = cellMaximumCapacity * n_parallel; % [Ah]
NominalPackCapacity = cellNominalCapacity * n_parallel; % [Ah]
PackExponentialZoneCapacity = cellExponentialCapacity * n_parallel; % [Ah]

% Determine Pack Nominal Discharge Current:
PackNominalDischgCurrent = cellNominalDischargeI * n_parallel; %[A]

% Determine Pack internal resistance:
PackInternalResistance = cellInternalR * n_series/n_parallel; %[Ω]

% Determine Battery Parameters:

A = 0.6*(PackFullChargeVoltage - PackExponentialZoneVoltage); % [V]
B = (3/PackExponentialZoneCapacity); % [1/(Ah)]
K = (3e-3)*(PackFullChargeVoltage - NominalPackVoltage + A*(exp(-B*NominalPackCapacity) - 1))*(PackRatedCapacity - NominalPackCapacity)/NominalPackCapacity;  % [V]
E0 = 0.9*(PackFullChargeVoltage + K - A + PackInternalResistance * PackNominalDischgCurrent);  % [V]

% Polarizing resistance shift during charging:
%polShift = polarizingRshift;


sim=sim('SIM01_Discharge_cell.slx');

%time=sim.VOC_data(:,1);
VOCcell=sim.VOC_data(:,2);
DODcell=sim.DOD_data(:,2);
DODcell=100.*DODcell;
%%
load('VOC_U27_36X.mat');
load('DOD_U27_36X.mat');
plot(DOD_U27_36X,VOC_U27_36X,DODcell,VOCcell,'Linewidth',2)
grid on
ylabel('Voltage [V]')
xlabel('Depth of Discharge [%]')
legend('Datasheet','Simulation','Location','northeast')