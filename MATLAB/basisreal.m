%% Weyl-Heisenberg Bases Toolbox
% Script "basisreal.m"
%% ��������:
% ��������� ���������� ������������ �������: ������ � ������������ ������
% �����-�����������.
%
%% ���� ������:
M     = input('���������� ������� �� ������� M = ');
L     = input('���������� ������� �� ������� L = ');
a     = input('�������� ����� a = ');
sigma = input('�������������������� ���������� sigma = ');

% ���������� ���������� ������� ������ ������:
G = gaborreal(M, L, a, sigma);
% ���������� ���������� ������� ������������ ������ �����-�����������:
W = weylhzreal(M, L, a, sigma);

% ����� ����������� ���������:
% ��������� �������:
TP0 = real(G);
TP1 = real(W);

%set(0,'DefaultAxesFontSize',9,'DefaultAxesFontName','Arial');
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Times New Roman');

figure(1);
subplot(2,1,1);
hold on;
plot(TP0(:,1),'b-','linewidth',2.5);
plot(TP1(:,1),'r-','linewidth',2.5);
legend('����� ������', '����� �-�', 1);
grid on;
title('��������� �������');
ylabel('���������');
xlabel('������� n');
hold off;

% ��������� �������:
SP0 = abs(fft(G));
SP1 = abs(fft(W));
subplot(2,1,2);
hold on;
plot(SP0(:,fix(M/2 + 1)),'b-','linewidth',2.5);
plot(SP1(:,fix(M/2 + 1)),'r-','linewidth',2.5);
legend('����� ������', '����� �-�', 1);
grid on;
title('��������� �������');
ylabel('������');
xlabel('������� n');
hold off;