%% Weyl-Heisenberg Bases Toolbox
% Function "rndcolor.m"
%% ��������:
% ������� ���������� ���� � ��� ����� �������. ������������ ��� �������� 
% ����������� ������� �������� �������.
%
%% ������� ������:
% k - ��������� ����� �����.
%
%% �������� ������:
% color - ����.
function [ color ] = rndcolor(k)
n = 4;
k = floor(k);
c = mod(k, n);

if (c == 0)
    color = 'r-';
elseif (c == 1)
    color = 'm--';
elseif (c == 2)
    color = 'b:';
elseif (c == 3)
    color = 'k--';
end;
end