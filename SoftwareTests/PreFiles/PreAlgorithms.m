%  Pre-run script for Algorithms.m
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands ----
clearvars = @()ClearCurrentWorkspace(testCase);

% <matlab:ShareFeedback Share your feedback>
function testCase = ClearCurrentWorkspace(testCase)
    clearvars -except testCase
end
