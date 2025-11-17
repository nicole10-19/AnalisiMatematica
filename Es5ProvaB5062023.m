% Intervallo x nel primo quadrante
x = linspace(0, 2, 400);

% Curve superiori e inferiori
y_ellisse = sqrt(1 - x.^2 / 4);       % parte superiore dell'ellisse
y_cerchio = sqrt(4 - x.^2);           % parte inferiore della circonferenza

% Disegno dell'insieme D
figure;
hold on;
fill([x, fliplr(x)], [y_cerchio, fliplr(y_ellisse)], [0.8 0.9 1], ...
    'EdgeColor', 'none'); % area D
plot(x, y_ellisse, 'b', 'LineWidth', 2);   % ellisse
plot(x, y_cerchio, 'r', 'LineWidth', 2);   % circonferenza

% Stile del grafico
xlabel('x');
ylabel('y');
title('Insieme D nel primo quadrante');
legend('Area D', 'Ellisse', 'Circonferenza');
axis equal;
grid on;
xlim([0 2]);
ylim([0 2]);
