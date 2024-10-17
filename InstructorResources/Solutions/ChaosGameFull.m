% Initialize values for a randomly chosen starting point
StartingPoint = rand([1 2]);
% Set the number of additional points to add
NumPts = 100;
% Initialize a variable to track the previous vertex.
OldVertex = 0;
% Initialize a vector of point values of the appropriate size
% For a large number of iterations, this is much more efficient than
% adding a new point to the end at each step which requires reallocating
% memory for a different size array each time
StartingVals = StartingPoint.*ones([NumPts 1]);
% Graph a scatter plot of the first point and save a handle to
% the scatter plot object for future reference
s = scatter(StartingVals(:,1),StartingVals(:,2),".");
% Set the x and y limits on the plot
xlim([0 1])
ylim([0 1])
% Set the axis to be square so that the figure will print elegantly and set
% the coordinate axes to be off so they don't distract from the picture
axis square off

% Run through throw-away points, but don't save or plot
for k = 1:25
    NextVertex = randi(4,1);
    while mod(NextVertex,4) == mod(OldVertex+1,4)
        NextVertex = randi(4,1);
    end
    %   1 is (0,0), 2 is (0,1), 3 is (1,1) and 4 is (1,0)
    switch NextVertex
        case 1
            NewCoords = [0 0];
        case 2
            NewCoords = [0 1];
        case 3
            NewCoords = [1 1];
        case 4
            NewCoords = [1 0];
    end
    NewPoint = (NewCoords-StartingPoint)/2 + StartingPoint;
    StartingPoint = NewPoint;
    OldVertex = NextVertex;
end

% Implement the chaos game.
% Start preserving data
for k = 1:NumPts
    % Choose a random vertex, then check whether that vertex is an
    % acceptable next step. If not, try again until it is usable
    NextVertex = randi(4,1);
    while mod(NextVertex,4) == mod(OldVertex,4)
        NextVertex = randi(4,1);
    end
    %   1 is (0,0), 2 is (0,1), 3 is (1,1) and 4 is (1,0)
    switch NextVertex
        case 1
            NewCoords = [0 0];
        case 2
            NewCoords = [0 1];
        case 3
            NewCoords = [1 1];
        case 4
            NewCoords = [1 0];
    end
    % Update the new point using the formula from the rules of the game
    % This does simplify to (NewCoords+StartingPoint)/2 as used in the live
    % script
    NewPoint = (NewCoords-StartingPoint)/2 + StartingPoint;
    %     % Check if the new point avoids a fixed region, if not, back out and
    %     % select a new corner and try again
    %     while sum((NewPoint-0.5).^2) < .0225 && sum((NewPoint-0.5).^2)> .01
    %         NewCoords = randi([0 1],[1 2])
    %         NewPoint = (NewCoords-StartingPoint)/2 + StartingPoint;
    %     end
    s.XData(k) = NewPoint(1);
    s.YData(k) = NewPoint(2);
    StartingPoint = NewPoint;
    OldVertex = NextVertex;
    if mod(k,ceil(NumPts/50)) == 0
        %         s.CData = 1-sqrt(((s.XData-.5).^2+(s.YData-.5).^2));
        %s.CData = s.XData;
        drawnow
    end
end
drawnow
hold off
