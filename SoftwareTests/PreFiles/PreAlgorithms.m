%  Pre-run script for Algorithms.mlx
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands ----
clearvars = @()ClearCurrentWorkspace(testCase);

function testCase = ClearCurrentWorkspace(testCase)
    clearvars -except testCase
end
