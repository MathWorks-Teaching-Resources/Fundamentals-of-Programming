%  Pre-run script for AlgorithmsSoln.m
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
clearvars = @()ClearCurrentWorkspace(testCase);

% <matlab:ShareFeedback Share your feedback>
function testCase = ClearCurrentWorkspace(testCase)
    clearvars -except testCase
end