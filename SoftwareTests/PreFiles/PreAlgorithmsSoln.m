%  Pre-run script for AlgorithmsSoln.mlx
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
clearvars = @()ClearCurrentWorkspace(testCase);

function testCase = ClearCurrentWorkspace(testCase)
    clearvars -except testCase
end