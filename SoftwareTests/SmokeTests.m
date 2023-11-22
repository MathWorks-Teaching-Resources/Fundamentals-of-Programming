% Run these tests with runMyTests
% All tests so far are on code expected to run without errors
% If/when we end up with a version that _should_ error,
% please add it to this set of examples
classdef SmokeTests < matlab.unittest.TestCase

    properties
        rootProject
        results
    end


    methods (TestClassSetup)

        function setUpPath(testCase)

            try
                project = currentProject;
                testCase.rootProject = project.RootFolder;
                cd(testCase.rootProject)
            catch
                error("Load project prior to run tests")
            end

            testCase.log("Running in " + version)

        end % function setUpPath

        function setUpResults(testCase)
            files = dir(fullfile(testCase.rootProject,"Scripts","*.mlx"));
            testCase.results = struct;
            testCase.results.Name = strings(size(files));
            testCase.results.Passed = false(size(files));
            testCase.results.Time = zeros(size(files));
            testCase.results.Message = strings(size(files));
            for k = 1:length(files)
                testCase.results.Name(k) = string(files(k).name);
            end

        end % function setUpResults

    end % methods (TestClassSetup)

    methods(Test)

        function smokeTest(testCase)
            myFiles = testCase.results.Name;
            fid = fopen(fullfile("SoftwareTests","TestResults_"+release_version+".txt"),"w");
            fprintf(fid,"Version,File,Status,ElapsedTime\n");
            for kTest = 1:length(myFiles)
                [flag,msg,time] = SmokeTestMyFile(myFiles(kTest));
                testCase.results.Time(kTest) = time;
                if flag
                    testCase.results.Time(kTest) = toc;
                    disp("Failed " + myFiles(kTest) + " because " + ...
                        newline + msg)
                    testCase.results.Message(kTest) = msg;
                    fprintf(fid,"%s,%s,%s,%s\n",release_version,myFiles(kTest),"failed",testCase.results.Time(kTest));
                else
                    disp("Finished " + myFiles(kTest))
                    testCase.results.Passed(kTest) = true;
                    fprintf(fid,"%s,%s,%s,%s\n",release_version,myFiles(kTest),"passed",testCase.results.Time(kTest));
                end
            end
            fclose(fid);
            struct2table(testCase.results)
            assert(all([testCase.results.Passed]))
        end

    end

    methods (TestClassTeardown)

        function closeAllFigure(testCase)
            close all force  % Close figure windows
            bdclose all      % Close Simulink models
        end

    end % methods (TestClassTeardown)

end

function [flag,MyErrorMessage,time] = SmokeTestMyFile(myFile)
try
    disp("Running " + myFile)
    tic
    run(myFile)
    time = toc;
catch ME
    time = toc;
    if myFile == "Introduction.mlx"
        if ME.message == "Unrecognized function or variable 'Monday'."
            flag = 0;
            MyErrorMessage = "Expected error.";
        else
            flag = 1;
            MyErrorMessage = ME.message;
        end
    else
        flag = 1;
        MyErrorMessage = ME.message;
    end
end
if ~exist("flag","var")
    flag = 0;
    MyErrorMessage = "";
end
end