%% Weyl-Heisenberg Bases Toolbox
% Function "uifft.m"
%% ��������:
% �������, ����������� ������ �������������� �����.
%
%% ������� ������:
% X - ������ ��� �������,
% Ncar - ����������� ������� ��� �������.
%
%% �������� ������:
% U - ������ ��� �������.
function U = uifft(X,Ncar)   
if (nargin < 2)
    Ncar=length(X(:,1));
end
U = ifft(X)*sqrt(Ncar);
end