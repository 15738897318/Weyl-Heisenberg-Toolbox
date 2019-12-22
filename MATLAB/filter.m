%% Weyl-Heisenberg Bases Toolbox
% Script "filter.m"
%% ��������:
% ��������� ������������ ��������-��������� ������ �������� ������ � ������������ 
% ������ �����-�����������, � ����� ������ ������� ��� � ��.
%
%% ���� ������
M     = input('���������� ������� �� ������� M = ');
L     = input('���������� ������� �� ������� L = ');
beta  = input('�������� ���� = ');

%% ����������� �������������� ����������
N = L*M;
sigma = sigmaparam(M, beta);
alfa = phaseparam(M, L);
disp(sigma);
disp(alfa);

%% ���������� �������� �������
g0=discret(sigma, N);
gopt = dzakt(g0, M); % Discrete Zak-Transform
%gopt = viener(g0, M); % Discrete Viener Transform

%% ���������� ��������
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Arial');
figure('Color','white');

% ���������� ��������������
subplot(2,1,1);
hold on;
plot(abs(g0),'k--','linewidth',2);
plot(abs(gopt),'k-','linewidth',2);
grid on;
title('��������� �������');  
xlabel('������� n');
ylabel('���������');
legend('����� ������','���. WH-�����');
hold off;

% ����������-��������� �������������� (���)
subplot(2,1,2);
hold on;
plot(abs(ufft(g0)),'k--','linewidth',2);
plot(abs(ufft(gopt)),'k-','linewidth',2);
grid on;
title('��������� �������');
xlabel('������� n');
ylabel('������ �������');
legend('����� ������','���. WH-�����');
hold off;