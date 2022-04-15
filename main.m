%% 2) Let K1, K2, ..., Kn be a sequence of uniform random variables with the uniformity range of [−5, 5].
clc, clear, close all
rng('shuffle')

% Part 1
uniformity_range = [-5, 5];
uni_diff = uniformity_range(2) - uniformity_range(1);

sample_size = 10000;

n_set = [1, 2, 3, 5, 10];
n_set_size = numel(n_set);

A_range = uniformity_range(1):0.01:uniformity_range(2);
mean_ = (uniformity_range(1) + uniformity_range(2)) / 2;
variance_ = uni_diff^2 / 12;

A = cumsum(uni_diff .* rand(n_set(n_set_size), sample_size) + uniformity_range(1));

fig = figure;
for i = 1:n_set_size
    n = n_set(i);
    subplot(3, 2, i)
    histogram(A(n,:), 'Normalization', 'pdf')
    hold on
    n_A_range = n .* A_range;
    n_mean = n * mean_;
    n_variance = n * variance_;
    n_sigma = sqrt(n_variance);
    gaussian = normpdf(n_A_range, n_mean, n_sigma);
    plot(n_A_range, gaussian, 'Color', 'Red')
    title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
    subtitle(['A = K_1 + K_2 + ... + K_n, K_i = uniform(a = ', num2str(uniformity_range(1)), ', b = ', num2str(uniformity_range(2)), ')'])
    xlabel('a')
    ylabel('f_A(a)')
    grid on
end

saveas(fig, 'Figures/Q2/q2_1.jpg')


% Part 2
n = 10;
sample_size = 100000;

A = cumsum(uni_diff .* rand(n, sample_size) + uniformity_range(1));

fig = figure;
histogram(A(n,:), 'Normalization', 'pdf')
hold on
n_A_range = n .* A_range;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normpdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = uniform(a = ', num2str(uniformity_range(1)), ', b = ', num2str(uniformity_range(2)), ')'])
xlabel('a')
ylabel('f_A(a)')
grid on

saveas(fig, 'Figures/Q2/q2_2.jpg')


% Part 3
n = 10;
sample_size = 10000;
uniformity_range = [-10, 10];

uni_diff = uniformity_range(2) - uniformity_range(1);
A_range = uniformity_range(1):0.01:uniformity_range(2);
mean_ = (uniformity_range(1) + uniformity_range(2)) / 2;
variance_ = uni_diff^2 / 12;

A = cumsum(uni_diff .* rand(n, sample_size) + uniformity_range(1));

fig = figure;
histogram(A(n,:), 'Normalization', 'pdf')
hold on
n_A_range = n .* A_range;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normpdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = uniform(a = ', num2str(uniformity_range(1)), ', b = ', num2str(uniformity_range(2)), ')'])
xlabel('a')
ylabel('f_A(a)')
grid on

saveas(fig, 'Figures/Q2/q2_3.jpg')

%% 3) Let K1, K2, ..., Kn be a sequence of exponential random variables where λ = 1.
clc, clear, close all
rng('shuffle')

% Part 1
lambda = 1;

sample_size = 10000;

n_set = [1, 2, 3, 5, 10];
n_set_size = numel(n_set);

A_ranges = {-3:0.01:5; -3:0.01:10; -3:0.01:10; -3:0.01:15; 0:0.01:20};
mean_ = 1 / lambda;
variance_ = 1 / lambda^2;

A = cumsum(exprnd(mean_, n_set(n_set_size), sample_size));

fig = figure;
for i = 1:n_set_size
    n = n_set(i);
    subplot(3, 2, i)
    histogram(A(n,:), 'Normalization', 'pdf')
    hold on
    n_A_range = A_ranges{i,:};
    n_mean = n * mean_;
    n_variance = n * variance_;
    n_sigma = sqrt(n_variance);
    gaussian = normpdf(n_A_range, n_mean, n_sigma);
    plot(n_A_range, gaussian, 'Color', 'Red')
    title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
    subtitle(['A = K_1 + K_2 + ... + K_n, K_i = exponential(\lambda = ', num2str(lambda), ')'])
    xlabel('a')
    ylabel('f_A(a)')
    grid on
end

saveas(fig, 'Figures/Q3/q3_1.jpg')


% Part 2
n = 10;
sample_size = 100000;

A = cumsum(exprnd(mean_, n, sample_size));

fig = figure;
histogram(A(n,:), 'Normalization', 'pdf')
hold on
n_A_range = 0:0.01:30;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normpdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = exponential(\lambda = ', num2str(lambda), ')'])
xlabel('a')
ylabel('f_A(a)')
grid on

saveas(fig, 'Figures/Q3/q3_2.jpg')


% Part 3
n = 10;
sample_size = 10000;
lambda = 2;

mean_ = 1 / lambda;
variance_ = 1 / lambda^2;

A = cumsum(exprnd(mean_, n, sample_size));

fig = figure;
histogram(A(n,:), 'Normalization', 'pdf')
hold on
n_A_range = 0:0.01:20;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normpdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = exponential(\lambda = ', num2str(lambda), ')'])
xlabel('a')
ylabel('f_A(a)')
grid on

saveas(fig, 'Figures/Q3/q3_3.jpg')

%% 4) Let K1, K2, ..., Kn be a sequence of Bernoulli random variables where p = 0.5.
clc, clear, close all
rng('shuffle')

% Part 1
p = 0.5;

sample_size = 10000;

n_set = [1, 2, 3, 5, 10];
n_set_size = numel(n_set);

A_ranges = {-1:0.01:2; -1:0.01:3; -1:0.01:4; 0:0.01:6; 0:0.01:11};
mean_ = p;
variance_ = p * (1 - p);

A = cumsum(binornd(1, p, n_set(n_set_size), sample_size));

fig = figure;
for i = 1:n_set_size
    n = n_set(i);
    subplot(3, 2, i)
    histogram(A(n,:), 'Normalization', 'cdf')
    hold on
    n_A_range = A_ranges{i,:};
    n_mean = n * mean_;
    n_variance = n * variance_;
    n_sigma = sqrt(n_variance);
    gaussian = normcdf(n_A_range, n_mean, n_sigma);
    plot(n_A_range, gaussian, 'Color', 'Red')
    title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
    subtitle(['A = K_1 + K_2 + ... + K_n, K_i = Bernoulli(p = ', num2str(p), ')'])
    xlabel('a')
    ylabel('F_A(a)')
    grid on
end

saveas(fig, 'Figures/Q4/q4_1.jpg')


% Part 2
n = 10;
sample_size = 100000;

A = cumsum(binornd(1, p, n, sample_size));

fig = figure;
histogram(A(n,:), 'Normalization', 'cdf')
hold on
n_A_range = 0:0.01:12;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normcdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = Bernoulli(p = ', num2str(p), ')'])
xlabel('a')
ylabel('F_A(a)')
grid on

saveas(fig, 'Figures/Q4/q4_2.jpg')


% Part 3
n = 10;
sample_size = 10000;
p = 0.75;

mean_ = p;
variance_ = p * (1 - p);

A = cumsum(binornd(1, p, n, sample_size));

fig = figure;
histogram(A(n,:), 'Normalization', 'cdf')
hold on
n_A_range = 0:0.01:12;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normcdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = Bernoulli(p = ', num2str(p), ')'])
xlabel('a')
ylabel('F_A(a)')
grid on

saveas(fig, 'Figures/Q4/q4_3.jpg')

%% 5) Let K1, K2, ..., Kn be a sequence of Poisson random variables where λ = 1.
clc, clear, close all
rng('shuffle')

% Part 1
lambda = 1;

sample_size = 10000;

n_set = [1, 2, 3, 5, 10];
n_set_size = numel(n_set);

A_ranges = {-1:0.01:8; -1:0.01:10; 0:0.01:13; 0:0.01:16; 0:0.01:27};
mean_ = lambda;
variance_ = lambda;

A = cumsum(poissrnd(lambda, n_set(n_set_size), sample_size));

fig = figure;
for i = 1:n_set_size
    n = n_set(i);
    subplot(3, 2, i)
    histogram(A(n,:), 'Normalization', 'cdf')
    hold on
    n_A_range = A_ranges{i,:};
    n_mean = n * mean_;
    n_variance = n * variance_;
    n_sigma = sqrt(n_variance);
    gaussian = normcdf(n_A_range, n_mean, n_sigma);
    plot(n_A_range, gaussian, 'Color', 'Red')
    title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
    subtitle(['A = K_1 + K_2 + ... + K_n, K_i = Poisson(\lambda = ', num2str(lambda), ')'])
    xlabel('a')
    ylabel('F_A(a)')
    grid on
end

saveas(fig, 'Figures/Q5/q5_1.jpg')


% Part 2
n = 10;
sample_size = 100000;

A = cumsum(poissrnd(lambda, n, sample_size));

fig = figure;
histogram(A(n,:), 'Normalization', 'cdf')
hold on
n_A_range = 0:0.01:27;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normcdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = Poisson(\lambda = ', num2str(lambda), ')'])
xlabel('a')
ylabel('F_A(a)')
grid on

saveas(fig, 'Figures/Q5/q5_2.jpg')


% Part 3
n = 10;
sample_size = 10000;
lambda = 2;

mean_ = lambda;
variance_ = lambda;

A = cumsum(poissrnd(lambda, n, sample_size));

fig = figure;
histogram(A(n,:), 'Normalization', 'cdf')
hold on
n_A_range = 0:0.01:42;
n_mean = n * mean_;
n_variance = n * variance_;
n_sigma = sqrt(n_variance);
gaussian = normcdf(n_A_range, n_mean, n_sigma);
plot(n_A_range, gaussian, 'Color', 'Red')
title(['Normalized Histogram of ', num2str(sample_size), ' Samples of A where n = ', num2str(n)], 'Color', 'Red')
subtitle(['A = K_1 + K_2 + ... + K_n, K_i = Poisson(\lambda = ', num2str(lambda), ')'])
xlabel('a')
ylabel('F_A(a)')
grid on

saveas(fig, 'Figures/Q5/q5_3.jpg')
