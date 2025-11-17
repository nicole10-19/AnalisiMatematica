% Numero di radici
n = 4;

% Modulo delle radici
r = 2;

% Argomento iniziale
theta0 = pi/2;

% Calcolo degli angoli
theta = (theta0 + 2*pi*(0:n-1)) / n;

% Coordinate complesse
z = r * exp(1i * theta);

% Disegno
figure;
plot(real(z), imag(z), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
hold on;
viscircles([0,0], r, 'Color', 'b', 'LineStyle', '--'); % cerchio
plot(0, 0, 'k+', 'MarkerSize', 10); % origine
axis equal;
grid on;
xlabel('Re');
ylabel('Im');
title('Radici di z^4 = 16i nel piano complesso');
