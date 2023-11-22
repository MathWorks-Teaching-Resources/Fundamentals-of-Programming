classdef FunctionTests < matlab.unittest.TestCase

    methods(Test)
        function checkTurkeys(testCase)
            % import matlab.unittest.diagnostics.FigureDiagnostic;
            myImg = imread("turkeys1.jpg");
            fig = imshow(myImg);
            % testCase.log(3,FigureDiagnostic(fig))
        end
    end % methods

     methods (TestClassTeardown)
        function closeOutput(testCase)
            close all force
        end

    end % methods (TestClassTeardown)

end % classdef