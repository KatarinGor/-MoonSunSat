clc; close all; clear all;
%% ������ �������� ���� � ����� ��� ������ ���� ���

AstroData;

%% ��������� ������� ������ ����
y0 = [xi_10 xi_20 xi_30...
      uL0 uE0 uS0];
y0 = y0';

 %% ����������� ��������� ��������
  % ��������� �����
t_begin = 0;
% �������� �����
t_end = 1 ;% * Td / T;
% ������������ ��� ����� ����� ����������
N_plots = 1000;
% ��� ������� ����� �������
step = (t_end - t_begin) / N_plots;

tspan = t_begin:step:t_end; 
% [t,y] = ode45(@f,[t_begin t_end],y0);
[t,y] = ode23(@f,tspan,y0);
%% �������
figure;
plot3(y(:,7),y(:,8),y(:,9),'o'); grid on
xlabel('X')
ylabel('Y')
zlabel('Z')
title('��������');
hold on;

%
% figure;
plot3(y(:,1),y(:,2),y(:,3),'.'); grid on
xlabel('X')
ylabel('Y')
zlabel('Z')
title('����')
% axis equal;
hold on;
%
% figure;
plot3(y(:,4),y(:,5),y(:,6),'o'); grid on
xlabel('X')
ylabel('Y')
zlabel('Z')
title('�����')

axis equal;

%% ���� � ���������������
figure;

% plot3(y(:,4),y(:,5), y(:,6)); hold on;

plot3(y(:,1)-y(:,4),y(:,2)-y(:,5),y(:,3)-y(:,6)); grid on
xlabel('X')
ylabel('Y')
zlabel('Z')
% title(' � ��������������� ��')
axis equal;


%% 

figure;
plot(y(:,7),y(:,8),'o'); grid on
xlabel('X')
ylabel('Y')
zlabel('Z')
hold on;

plot(y(:,1),y(:,2),'.'); grid on
xlabel('X')
ylabel('Y')
zlabel('Z')

hold on;

plot(y(:,4),y(:,5),'o'); grid on
xlabel('X')
ylabel('Y')
zlabel('Z')

axis equal;