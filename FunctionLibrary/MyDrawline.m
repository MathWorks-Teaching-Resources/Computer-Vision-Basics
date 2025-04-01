function MyDrawline(Image,opts)
arguments
    Image (1,1) {mustBeText}
    opts.ShowVector = false;
    opts.improfile = false;
    opts.Interactive = true; % Can be flip to false for non-interactive testing
end
    % Read the image
    ImageData = imread(Image);
    
%   Detailed explanation goes here
    figure;
    imshow(ImageData);
    title(Image);
    if opts.Interactive
        h = drawline("Color",[0.3010 0.7450 0.9330]);
        Position = h.Position;
        delete(h.Parent.Parent);
    else % For testing only
        Position = [116.3367  154.7245;206.5816  102.1939];
    end

    % Define two positions from the drawn line
    Position1 = Position(1,:); % First position [x1, y1]
    Position2 = Position(2,:); % Second position [x2, y2]

    % Calculate the vector components (difference in x and y)
    fx = Position2(1)-Position1(1); % Change in x
    fy = Position2(2)-Position1(2); % Change in y

    % Calculate the magnitude of the vector
    magnitude = norm([fx,fy]);

     % Calculate the direction (angle) of the vector in radians
    direction = atan2(fy,fx); % Direction in radians
    direction = abs(direction*(180/pi));

    % Display the image with the selected line
    figure;
    imshow(ImageData);
    title(Image);
    hold on;
    if ~opts.ShowVector
        drawline(Position=[Position1; Position2],Color=[0.3010 0.7450 0.9330]);
    else
        quiver(Position1(1),Position1(2),fx,fy,0, LineWidth=2,MaxHeadSize=1,SeriesIndex=6);
        % Annotate the image with the magnitude of the vector
        text(Position1(1)+50,Position1(2)-50,sprintf("Magnitude: %.1f", magnitude), ...
            FontSize=12,FontWeight="bold",HorizontalAlignment="center",SeriesIndex=6);
        text(Position1(1)+50,Position1(2)-25,sprintf("Direction: %.1f°", direction), ...
            FontSize=12,FontWeight="bold",HorizontalAlignment="center",SeriesIndex=6);
        disp("The edge strength is " +num2str(round(magnitude)));
        disp("The edge direction is " +num2str(round(direction))+" degrees.");
    end
    hold off;

    if opts.improfile
        figure;
        ImProf = improfile(ImageData,Position(:,1),Position(:,2));
        % ImProf = -ImProf; % Invert intensity profile to align with image axes
        plot(ImProf(:,:,1));
        title("Intensity Signal"+newline+erase(Image,".jpg"));
        xlabel("Position");
        ylabel("Intensity Signal ");

        % Adjust axis limits
        ax = gca;
        ax.XLim = [1,length(ImProf(:,:,1))];
        padding = 0.1*range(ImProf(:,:,1));
        ax.YLim = [min(ImProf(:,:,1))-padding,max(ImProf(:,:,1))+padding];
    end
end