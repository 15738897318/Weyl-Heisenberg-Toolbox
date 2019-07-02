%% Weyl-Heisenberg Bases Toolbox
% Script "filterf.m"
%% ��������:
% ��������� ������������ ��������-��������� ������ �������� ������ � ������������ 
% ������ �����-�����������, � ����� ������ ������� ��� � ��.
%% ���� ������:
M = 64;
L = 16;
N = L*M;
N2 = fix(N/2);
beta = 1.0;
sigma = sigmaparam(M, beta);
alfa = phaseparam(M, L);
disp(sigma);
disp(alfa);
%% ��������� �������:
Nt = [0:N2-1]';
Ntt = [0:N-1]';
%% �������� ������� ������ ��� ���������� WH-������:
g=zeros(N,1);
g2=zeros(N,1);
gg=gaussian(Nt, sigma);
g(1:N2)=gg;
for tau=0:N-1
    if tau==0
        g2(1)=gg(1);
    else
        g2(tau+1)=(g(tau+1)+g(N-tau+1))/1;
    end;
end;
%% �������� ��������������� �� ������ Zak-��������������:
M2 = M./2;
Kg = L.*2;
G  = reshape(g2,M2,Kg).';
ZG = fft(G).';
ZGo= zeros(M2,Kg);
for n=1:M2
    for k=1:Kg
        if k<Kg/2+1
            ZGo(n,k)=2*ZG(n,k)/sqrt(M*(abs(ZG(n,k))^2+abs(ZG(n,Kg+k-Kg/2))^2));  
        else 
            ZGo(n,k)=2*ZG(n,k)/sqrt(M*(abs(ZG(n,k))^2+abs(ZG(n,k-Kg/2))^2));  
        end;
    end;
end;
Go=ifft(ZGo.').';
g2o=Go(:); % ���������� �������������� ������������ ������������ �������.
%% ������� � ����������� ��� ���� ����������� ��������:
clear  ZGo Go % ������������ ����������� ������ ��� ������ � ��������.
Sp1_=ufft(g2);
Sp2_=ufft(g2o);
%% ������������ ��������� ������������� ����������� ��������:
Kint=L/2; % ����������� ������������
Sp1=ufft([g2(1:N/2);zeros(Kint*N,1);g2(N/2+1:N)]); 
Sp2=ufft([g2o(1:N/2);zeros(Kint*N,1);g2o(N/2+1:N)]); 
xx=0:Kint*M-1; % ����� ������� ������������ ����������� ���.
%% ��������� ��������:
set(0,'DefaultAxesFontSize',10,'DefaultAxesFontName','Arial');
%% ����������-��������� �������������� (���):
%figure('Color','white')
figure(1)
subplot(2,1,2);
hold on;
% ������ ��������:
Sp1a = abs(Sp1(xx+1));
Sp2a = abs(Sp2(xx+1));
% ���������� ��������:
plot([fliplr(Sp1a.').';Sp1a],'k--','linewidth',2);
plot([fliplr(Sp2a.').';Sp2a],'k-','linewidth',2);
hold off;
grid on;
xlabel('������� n');
ylabel('������ �������');
title('��������� �������');
%title(['�������� ����������' ': L=' int2str(L) '; M=' int2str(M) '; N=' num2str(N)]); 
legend('����� ������','���. WH-�����');
%% ���������� ��������������:
subplot(2,1,1);
hold on;
g2_=abs(g2(mod((0:N-1)-N/4,N)+1));
g2o_=abs(g2o(mod((0:N-1)-N/4,N)+1));
plot(Nt*2,g2_(Nt+1),'k--','linewidth',2);
plot(Nt*2,g2o_(Nt+1),'k-','linewidth',2);
grid on;
xlabel('������� n');
ylabel('���������');
title('��������� �������');
%title(['�������� ����������' ': L=' int2str(L) '; M=' int2str(M) '; N=' num2str(N)]);  
legend('����� ������','���. WH-�����');
