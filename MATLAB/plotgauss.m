%% Weyl-Heisenberg Bases Toolbox
% Script "plotgauss.m"
%% ��������:
% ��������� ������������� ���������� ��������� � ������ ������ �� 
% ���������� ��������.
%
%% ���� ������
N     = input('���������� ���������� �������� = ');
sigma = input('�������������������� ���������� = ');

%% ������������� ���������� ���������
g0 = discret(sigma, N);

%% ���������� ����������� ������� ������� ���������� ���������
set(0,'DefaultAxesFontSize',11,'DefaultAxesFontName','Times New Roman');
figure(1)
plot(g0, 'k','linewidth',2.5);
grid on;
title('������ ������� ���������� ���������');
ylabel('���������');
xlabel('������� n');