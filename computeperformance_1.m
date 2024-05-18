function [EER, mTSR, mFAR, mFRR, mGAR] = computeperformance(gen, imp, STEP)
% COMPUTEPERFORMANCE Computes performances of algorithm.
%   COMPUTEPERFORMANCE(GEN, IMP, THRES) computes the performance of the
%   algorithm in terms of its Genuine Acceptance Rate (GAR), False
%   Acceptance Rate (FAR), False Rejection Rate (FRR), and verification rate
%   where both FAR and FRR are set to be as close to each other as
%   possible. The scores of genuine and impostors, GEN and IMP, can be in
%   numeric (i.e. integer, floating-point numbers) or bitstrings form. The
%   step/interval for the iteration used to obtain the threshold value, 
%   STEP, is determined by the user. The default value for STEP is 0.1.

% Find the starting and terminating values for the iteration to find the 
% optimal threshold value.

start = min(gen);
if min(imp) < start
    start = min(imp);
end
stop = max(imp);
if max(gen) > stop
    stop = max(gen);
end

% Calculate TSR, FAR, FRR, and GAR for each threshold value.

j = 1;
far_values = [];
frr_values = [];

[mTSR, mFAR, mFRR, mGAR] = calculateverificationrate(start, gen, imp);

for i = start + STEP : STEP : stop
    [TSR, FAR, FRR, GAR] = calculateverificationrate(i, gen, imp);
    y(j) = FRR;
    x(j) = FAR;
    z(j) = GAR;
    s(j) = TSR;
    j = j + 1;
    
    % Store FAR and FRR values for DET curve
    far_values = [far_values FAR];
    frr_values = [frr_values FRR];

    mTSR = [mTSR TSR];
    mFAR = [mFAR FAR];
    mFRR = [mFRR FRR];
    mGAR = [mGAR GAR];
end

% Find the optimal threshold where FAR and FRR are the closest to each other.

[val, ind] = min(abs(y - x));

% Display performance result.

fprintf('-------------------------------------\n')
fprintf('\t\tPerformance Result\n')
fprintf('-------------------------------------\n')
fprintf('Verification Rate\t\t: %6.2f %%\n', s(ind));
fprintf('Genuine Acceptance Rate\t: %6.2f %%\n', z(ind));
fprintf('False Acceptance Rate\t: %6.2f %%\n', x(ind));
fprintf('False Rejection Rate\t: %6.2f %%\n', y(ind));
fprintf('Equal Error Rate\t\t: %6.2f %%\n', (y(ind) + x(ind)) / 2);

% Plot DET curve with EER point
figure;
loglog(far_values, frr_values, 'r-*', 'LineWidth', 1.5, 'MarkerSize', 8);
xlabel('False Acceptance Rate (FAR)');
ylabel('False Rejection Rate (FRR)');
title('DET Curve for Equal Error Rate (EER)');
grid on;

% Highlight EER point
hold on;
plot(x(ind), y(ind), 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
hold off;

% Add legend
legend('DET Curve', 'EER Point', 'Location', 'Southwest');

% Set EER value
EER = (y(ind) + x(ind)) / 2;
end
