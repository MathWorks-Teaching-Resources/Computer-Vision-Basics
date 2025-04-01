function [Position,EdgeImage,ImageTitle]= GetPosition(IdealEdge,AddNoise) % Function to call drawline
EdgeImage = imread(IdealEdge);
if IdealEdge=="XRayofArm.jpg"
    if AddNoise
        EdgeImage=imnoise(EdgeImage,"gaussian",0.3);
        ImageTitle = "Image of 'Noisy' " + erase(IdealEdge, ".jpg");
    else
        ImageTitle = "Image of "+erase(IdealEdge,".jpg");
    end
else
    ImageTitle= "Image of X-Ray of Arm";
end
    figure;
    imshow(EdgeImage);
    title(ImageTitle)
    h = drawline("Color",[0.3010 0.7450 0.9330]); % This needs a special test
    Position = h.Position; % We can spoof with entering a position
    delete(h.Parent.Parent);
end

