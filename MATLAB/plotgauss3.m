%% Weyl-Heisenberg Bases Toolbox
% Script "plotgauss3.m"
%% ��������:
% ��������� ������������� ���������� ��������� � ������ ���������� ������ 
% ������� �� ���������� ��������.
%
%% ���� ������
N     = input('���������� ���������� �������� = ');
sigma = input('�������������������� ���������� = ');

%% ������������� ���������� ���������
g0 = discret(sigma, N);

%% ���������� ���������� �������
maximum = max(g0);
Z = g0' * g0./ maximum;
S = 1:N;

%% ���������� ����������� ������� ������� ���������� ���������
set(0,'DefaultAxesFontSize',11,'DefaultAxesFontName','Times New Roman');
figure(1);
surf(S,S,real(Z));
shading interp;
title('��������� �������');
xlabel('������� n');
ylabel('������� n');
zlabel('���������');