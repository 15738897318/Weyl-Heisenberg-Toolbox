%% Weyl-Heisenberg Bases Toolbox
% Function "gaussian.m"
%% ��������:
% ������� ���������� ��������� (������� ������).
%
%% ������� ������:
% x - ��������� �������� (��������),
% sigma - �������������������� ����������.
%
%% �������� ������:
% g - �������� �������.
function [ g ] = gaussian( x, sigma )
g = (2.*sigma).^(0.25).*exp(-pi.*sigma*x.^2);
end