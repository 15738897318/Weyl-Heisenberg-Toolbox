%% Weyl-Heisenberg Bases Toolbox
% Function "ufft.m"
%% ��������:
% �������, ����������� ������ �������������� �����.
%
%% ������� ������:
% U - ������ ��� �������,
% Ncar - ����������� ������� ��� �������.
%
%% �������� ������:
% X - ������ ��� �������.
function X = ufft(U,Ncar)
if (nargin < 2)
    Ncar=length(U(:,1));
end
X = fft(U)/sqrt(Ncar);
end