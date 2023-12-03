%%
%Simple Linear Regression

x = 1:25;
y = x*2.7 + randn(size(x))*0.5;

mdl = fitlm(x', y');

% Data points
figure;
scatter(x, y, 'filled', 'DisplayName', 'Data Points');
hold on;

% Linear regression line
x_range = min(x):0.01:max(x);
y_pred = predict(mdl, x_range');
plot(x_range, y_pred, 'r-', 'LineWidth', 2, 'DisplayName', 'Linear Regression');

title('Linear Regression Example');
xlabel('X-axis');
ylabel('Y-axis');
legend('Location', 'northwest');
grid on;

%%
% Multiple Linear Regression

% Generate random data for three independent variables (X1, X2, X3) and one dependent variable (Y)
rng(123); % Set seed for reproducibility
num_samples = 100;
X1 = randn(num_samples, 1);
X2 = randn(num_samples, 1);
X3 = randn(num_samples, 1);
Y = 2*X1 + 3*X2 - 0.5*X3 + 5 + 0.5*randn(num_samples, 1);

% Create a table for better data organization
data = table(X1, X2, X3, Y, 'VariableNames', {'X1', 'X2', 'X3', 'Y'});

% Fit multiple linear regression model
mdl = fitlm(data, 'Y ~ X1 + X2 + X3');

disp('Regression Coefficients:');
disp(mdl.Coefficients.Estimate);

Y_pred = predict(mdl, data);

% Subplot 1: Actual vs. Predicted Values
subplot(1, 2, 1);
scatter(data.Y, Y_pred, 'filled');
title('Actual vs. Predicted Values');
xlabel('Actual Y');
ylabel('Predicted Y');
grid on;

% Subplot 2: Residuals vs. Fitted Values
subplot(1, 2, 2);
plotResiduals(mdl, 'fitted');
title('Residuals vs. Fitted Values');
xlabel('Fitted Values');
ylabel('Residuals');
grid on;
