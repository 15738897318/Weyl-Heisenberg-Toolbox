%% Weyl-Heisenberg Bases Toolbox
% Script "shifts.m"
% ��������:
%% ������������� ������ ������������ ������ �����-����������� �� ������� � 
% �������.
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

% ���������� ������� ������������ ������ �����-�����������:
W = weylhz(M, L, a, sigma);

% ����� ����������� ���������:
% ��������� �������:
TP0 = real(W);

%set(0,'DefaultAxesFontSize',9,'DefaultAxesFontName','Arial');
set(0,'DefaultTextFontSize',10,'DefaultTextFontName','Times New Roman');

figure(1);
subplot(2,1,1);
hold on;
for i = 1 : M
    plot(TP0(:,1 + M * i),rndcolor(i),'linewidth',2.5);
end;
grid on;
title('��������� �������');
ylabel('���������');
xlabel('������� n');
hold off;

% ��������� �������:
SP0 = abs(fft(W));
subplot(2,1,2);
hold on;
for j = 1 : L
    plot(SP0(:,j),rndcolor(j),'linewidth',2.5);
end;
grid on;
title('��������� �������');
ylabel('������');
xlabel('������� n');
hold off;