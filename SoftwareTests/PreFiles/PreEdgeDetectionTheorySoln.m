%  Pre-run script for EdgeDetectionTheorySoln.mlx
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
GetPosition = @(IdealEdge,AddNoise) GetPositionSpoofing(IdealEdge,AddNoise);

function [Position,EdgeImage,ImageTitle] = GetPositionSpoofing(IdealEdge,AddNoise) % Function to call drawline
EdgeImage = imread(IdealEdge);
if AddNoise
    EdgeImage=imnoise(EdgeImage,"gaussian",0.3);
    ImageTitle = "Image of 'Noisy' " + erase(IdealEdge, ".jpg");
else
    ImageTitle = "Image of "+erase(IdealEdge,".jpg");
end
Position=[87.06,158.06;239.89,155.36];
end

