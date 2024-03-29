  

%% �������� ������

% �������������� ����������
G = 6.67e-11;

% ����� ��� (����, �����, ������)
m = [7.349e22, 5.792e24, 1.989e30];

% ����������� �������������� ��������� ���
mu = G*m;

% ��������� �������������� ��������� � ������
kappa = mu/mu(3);

% ��������������� �������
a = 1.495978707e11;

% ������� ������������� �������, c
T = 2 * pi * a * sqrt(a / mu(3));

% ���������� NASA ��� ����
xL = 5.771034756256845E-01;
yL = -8.321193799697072E-01;
zL = -4.855790760378579E-05;


xi_10 = [xL, yL, zL]; % ��������� ��������� ����, �.�.

% ���������� NASA ��� �����
xE = 5.755663665315949E-01;
yE = -8.298818915224488E-01;
zE = -5.366994499016168E-05;

xi_20 = [xE, yE, zE]; % ��������� ��������� �����, �.�.

% ����������� ��������� ��������� ������, ������� ��� ������ ��������� - � ������ ���� ���� �������
xi_30 = - kappa(1)* xi_10 - kappa(2)* xi_20; % ��������� ��������� ������, �.�.

% ������ ��������� ��� ���������� ������������ ���������
Td = 86400.0;
u = sqrt(mu(3) / a) / 2 / pi;

% ��������� �������� ����
vxL = 1.434571674368357E-02;
vyL = 9.997686898668805E-03;
vzL = -5.149408819470315E-05;

vL0 = [vxL, vyL, vzL];
vL0 = vL0 * a / Td; % ��������� �������� ����, �/�
uL0 = vL0 / u; % ��������� �������� ����, ������������

% ��������� �������� �����
vxE = 1.388633512282171E-02;
vyE = 9.678934168415631E-03;
vzE = 3.429889230737491E-07;

vE0 = [vxE, vyE, vzE];
vE0 = vE0 * a / Td; % ��������� �������� �����, �/�
uE0 = vE0 / u; % ��������� �������� �����, ������������

% ��������� �������� ������
vS0 = - kappa(1) * vL0 - kappa(2) * vE0; % ��������� �������� ������, �/�
uS0 = - kappa(1) * uL0 - kappa(2) * uE0; % ��������� �������� ������, ������������



