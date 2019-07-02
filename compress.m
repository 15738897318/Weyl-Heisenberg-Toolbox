%% Weyl-Heisenberg Bases Toolbox
% Function "compress.m"
%% ��������:
% ������� ������ ������ ������� ������������ ����� �� ���������� ��������.
%
%% ������� ������:
% I - ��������� ������,
% threshold - ��������� ��������.
%
%% �������� ������:
% J - ��������� ������-���������,
% total - ����� ������ ���������.
function [ J, total ] = compress( I, threshold )
%% ����������� ���������� �������:
l0 = size(I, 1);
l1 = size(I, 2);
J = zeros(l0, l1);
total = 0;
%% ������ �� ���������� ��������:
for i = 1 : l0
    for j = 1 : l1
        if (abs(I(i, j)) < threshold)
            J(i, j) = 0;
            total = total + 1;
        else
            J(i, j) = I(i, j);
        end;
    end;
end;
end