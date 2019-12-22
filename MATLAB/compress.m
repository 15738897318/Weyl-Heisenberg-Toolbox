%% Weyl-Heisenberg Bases Toolbox
% Function "compress.m"
%% ��������:
% ������� ������ ��������� ������� �� ��������� ������������ �������.
%
%% ������� ������:
% I - ��������� ������,
% coefficient - ���������� ���������� �������� �� �������.
%
%% �������� ������:
% J - ��������� ������,
% compressed - ���������� ������ ���������,
% total - ����� ����� ���������.
function [ J, compressed, total ] = compress( I, coefficient )
% ����������� ���������� �������
l0 = size(I, 1);
l1 = size(I, 2);
ll = l0 * l1;
H = zeros(1, ll);

% �������������� � ������
for i = 1 : l0
    for j = 1 : l1
        H(1, i * l0 + j) = abs(I(i, j));
    end
end
H = sort(H);

% ���������� ������
threshold = H(1, floor(ll * coefficient));

% ������ �� ���������� ��������
J = zeros(l0, l1);
compressed = 0;
total = 0;

for i = 1 : l0
    for j = 1 : l1
        if (abs(I(i, j)) <= threshold)
            J(i, j) = 0;
            compressed = compressed + 1;
        else
            J(i, j) = I(i, j);
        end
        total = total + 1;
    end
end
end
