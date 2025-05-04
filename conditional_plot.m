% Data
values = [3.01, 0.57, 0.129];   % Percentages
labels = {'HIV', 'TB', 'HIV+TB'};

% Create bar chart
figure;
bar(values, 'FaceColor', [0.2 0.6 0.5]); % Optional color
set(gca, 'XTickLabel', labels, 'XTick', 1:numel(labels));
ylabel('Percentage (%)');
title('Prevalence Rates');

% Add percentage labels on top of bars
for i = 1:length(values)
    text(i, values(i) + 0.05, sprintf('%.2f%%', values(i)), ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom', ...
        'FontSize', 12);
end

grid on;