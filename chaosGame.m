% Initialize values for a randomly chosen starting point
startingPoint = rand([1 2]);
% Set the number of additional points to add
numPts = 100;
% Initialize a variable to track the previous vertex.
oldVertex = 0;
% Initialize a vector of point values of the appropriate size
% For a large number of iterations, this is much more efficient than
% adding a new point to the end at each step which requires reallocating
% memory for a different size array each time
startingVals = startingPoint.*ones([numPts 1]);
% Graph a scatter plot of the first point and save a handle to 
% the scatter plot object for future reference
s = scatter(startingVals(:,1),startingVals(:,2),".");
% Set the x and y limits on the plot
xlim([0 1])
ylim([0 1])
% Set the axis to be square so that the figure will print elegantly and set
% the coordinate axes to be off so they don't distract from the picture
axis square off

% Exercise 5 code goes here

% Implement the chaos game. 
for k = 1:numPts
    newVertex = randi(4,1);
%         Exercise 4 code goes here
    switch newVertex
        case 1
            newCoords = [0 0];
        case 2
            newCoords = [0 1];
        case 3
            newCoords = [1 1];
        case 4
            newCoords = [1 0];
    end
    % Update the new point using the formula from the rules of the game
    % This does simplify to (newCoords+startingPoint)/2 as used in the live
    % script
    newPoint = (newCoords-startingPoint)/2 + startingPoint;

    s.XData(k) = newPoint(1);
    s.YData(k) = newPoint(2);
    startingPoint = newPoint;
    oldVertex = newVertex;
% Exercise 3 code goes here
    drawnow
% Exercise 3 code goes here, too
end
drawnow

