classdef OpenCloseFileTest < matlab.unittest.TestCase

    properties
        rootProject
    end

    methods(TestClassSetup)

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
        
    end % methods(TestClassSetup)

    methods(Test)

        % Test that converted live scripts open correctly as plain-text MATLAB files
        function OpenCloseLiveScripts(testCase)

            files = dir(fullfile(testCase.rootProject,"*.m"));
            files = [files;dir(fullfile(testCase.rootProject,"Scripts","*.m"))];
            files = [files;dir(fullfile(testCase.rootProject,"InstructorResources","Solutions","*.m"))];

            for i = 1:numel(files)
                filepath = fullfile(files(i).folder,files(i).name);
                fid = matlab.desktop.editor.openDocument(filepath);
                fid.closeNoPrompt;
            end
        end  

        % Test that all the MAT file open correctly and are not corrupted
        function OpenCloseMAT(testCase)
            files = dir(fullfile(testCase.rootProject,"Data","*.mat"));
            for i = 1:numel(files)
                matpath = fullfile(files(i).folder,files(i).name);
                mid = open(matpath); %#ok<NASGU>
                clear mid
            end
        end

        % Test that all the SLX file open correctly and are not corrupted
        function testSLX(testCase)
            files = dir(fullfile(testCase.rootProject,"Models","*.slx"));
            for i = 1:numel(files)
                modpath = fullfile(files(i).folder,files(i).name);
                open_system(modpath)
                close_system(modpath)
            end
        end

    end


    methods (TestClassTeardown)

        % function closeAllFigure(testCase)
        %     close all force  % Close all figures
        %     bdclose all      % Close all models
        % end

    end % methods (TestClassTeardown)


end
