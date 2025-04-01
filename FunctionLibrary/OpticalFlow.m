function SecondFrameFlow=OptFlow(ChosenMovie,FrameDepth)
%Optical Flow Function
%   Function to do optical flow between two images in a movie

vidReader = VideoReader(ChosenMovie, CurrentTime=1);
FrameNum = vidReader.NumFrames;
flowModel = opticalFlowLK;
FirstFrame = read(vidReader,(FrameNum-FrameDepth));
FirstFrameG = im2gray(FirstFrame);
SecondFrame = read(vidReader,FrameNum);
SecondFrameG = im2gray(SecondFrame);
FirstFrameFlow = estimateFlow(flowModel,FirstFrameG);
SecondFrameFlow = estimateFlow(flowModel,SecondFrameG);

% Define annotation positions
position1 = [10, 10]; % Top-left corner of the first frame

% Define annotation text
text1 = "First Frame + Optical Flow Vectors";
text2 = "Second Frame";

% Insert text annotations into each image
FirstFrameAnnotated = insertText(FirstFrame,position1,text1,FontSize=36,BoxColor="white",TextColor="black");
SecondFrameAnnotated = insertText(SecondFrame,[10, 10],text2,FontSize=36,BoxColor="white",TextColor="black");

figure
imshow(FirstFrameAnnotated)

% Add optical flow vectors to the first frame
hold on;
plot(SecondFrameFlow,DecimationFactor=[10 10],ScaleFactor=5,Color=[0.3010 0.7450 0.9330]);
hold off;
figure
imshow(SecondFrameAnnotated)
reset(flowModel);
end

