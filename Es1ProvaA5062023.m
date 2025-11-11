%Esercizio 1 Prova A del 5-6-2023

% Imposta la griglia
x = linspace(-2.5, 2.5, 400);
y = linspace(0, 2.5, 400); % solo y >= 0
[X, Y] = meshgrid(x, y);

% Condizione 1: dentro il cerchio di raggio 2
C1 = (X.^2 + Y.^2) <= 4;

% Condizione 2: fuori dall'ellisse
C2 = (X.^2 / 4 + Y.^2) >= 1;

% Intersezione delle condizioni
D = C1 & C2;

% Disegna l'insieme
figure;
contourf(X, Y, D, [1 1], 'LineColor', 'b');
axis equal;
xlabel('x');
ylabel('y');
title('Insieme D nel piano cartesiano');
