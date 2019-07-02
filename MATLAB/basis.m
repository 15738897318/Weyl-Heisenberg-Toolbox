%% Weyl-Heisenberg Bases Toolbox
% Script "basis.m"
%% ��������:
% ��������� ���������� ����������� �������: ������ � ������������ ������
% �����-�����������.
%% ����������: 
% � �������� ������� ������������ ������ �����-�����������
% ����� ���� ����� ����������� ���� �� ��������� ��������� ������ 
% �������� ��������������� (������� �����-������, ���������� ����������). 
% ��� ����� ���������� ���������� �������������� ������ � ������ ���� �� 
% "weylhzg" ��� "weylhzp".
%
%% ���� ������:
M     = input('���������� ������� �� ������� M = ');
L     = input('���������� ������� �� ������� L = ');
a     = input('�������� ����� a = ');
sigma = input('�������������������� ���������� sigma = ');

% ���������� ������������� ������� ������ ������:
G = gabor(M, L, a, sigma);
% ���������� ������������� ������� ������������ ������ �����-�����������:
W = weylhzp(M, L, a, sigma);

% ����� ����������� ���������:
% ��������� �������:
TP0 = real(G);
TP1 = real(W);

%set(0,'DefaultAxesFontSize',9,'DefaultAxesFontName','Arial');
set(0,'DefaultTextFontSize',11,'DefaultTextFontName','Times New Roman'); 

figure('Color','white');
subplot(2,1,1);
hold on;
plot(TP0(:,1),'k--','linewidth',2.2);
plot(TP1(:,1),'k-','linewidth',2.2);
legend('����� ������', '���. WH-�����');
grid on;
title('��������� �������');
ylabel('���������');
xlabel('������� n');
ylim([0, 0.6]);
hold off;

% ��������� �������:
SP0 = abs(fft(G));
SP1 = abs(fft(W));
subplot(2,1,2);
hold on;
plot(SP0(:,fix(M/2 + 1)),'k--','linewidth',2.2);
plot(SP1(:,fix(M/2 + 1)),'k-','linewidth',2.2);
legend('����� ������', '���. WH-�����');
grid on;
title('��������� �������');
ylabel('������');
xlabel('������� n');
hold off;