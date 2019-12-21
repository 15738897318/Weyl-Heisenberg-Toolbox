%% Weyl-Heisenberg Bases Toolbox
% Script "plotwh.m"
%% ��������:
% ��������� ������� �������� ��������� ����������� WH-�������
% � �������������� ����������� ���������� ��� ������ N-1 ��������� 
% � ������ ������� ������� ������ ������ � ������������ ������ 
% �����-�����������.
% 
%% ���� ������
M     = input('���������� ������� �� ������� M = ');
L     = input('���������� ������� �� ������� L = ');
sigma = input('�������������������� ���������� = ');

%% ����������� ��������� ����������
N = L * M; % ���������� �������
disp('���������� �������� N:');
disp(N); % ����� �� �����.

%% ������������� ���������� ���������
g0 = discret(sigma, N);

%% ��������� ����������� ����������� ������� � �������������� �������� ��������� �������
gopt = dzakt(g0, M); % Discrete Zak-Transform
%gopt = viener(g0, M); % Discrete Viener Transform

%% ���������� �������� ������� ������ � �����-�����������
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman'); 
figure(1);
hold on;
grid on;
S = -N/2+0.5:1:N/2;
plot(S,   g0, 'b-', 'linewidth', 2.5);
plot(S, gopt, 'r-', 'linewidth', 2.5);
legend('����� ������', '����� �-�');
title('��������� �������');
ylabel('���������');
xlabel('������� n');
hold off;