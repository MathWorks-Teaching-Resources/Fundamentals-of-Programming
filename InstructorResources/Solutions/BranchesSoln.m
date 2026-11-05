%[text] %[text:anchor:T_BB73E10C] # Branch Logic
%[text] [⇦ Main Menu](file:../../MainMenu.m)
%[text] Computers must be told explicitly how to make decisions. One type of decisions which is common in computer programming is a branch decision. There is a logical statement that controls which of several possible paths through the code will be followed based on the state of the inputs. One common depiction of branch logic is a flow chart, but branching can also describe the options available in navigating a maze.   
%[text]{"align":"center"} ![A maze depicting the need to choose a branch at each intersection to define a path](text:image:4dc0)
%[text] Branches allow you to create flexible code that can react to changing conditions.
%[text:tableOfContents]{"heading":"Table of Contents"}
%[text] %[text:anchor:H_51183E7B] **Before you get started:**
%[text] This live script is intended to be used with the code visible and output inline. On **View** tab of the MATLAB toolstrip, in the **View** section, select **Output Inline**. Alternately, select **Output inline** using the icon ![live script code hidden icon](text:image:3b41) at the top right of the Live Editor pane.
%[text] ![Idea symbol](text:image:04d7) Interacting with this live script will build some familiarity with MATLAB, as concepts and commands are introduced together, but some familiarity with the Live Editor environment was introduced in [IntroductionSoln.m](file:IntroductionSoln.m). A brief summary of the tools, tips, and suggestions from each script is gathered in [Collected Pro Tips](file:CollectedProTipsSoln.m).
%[text] ![Warning symbol](text:image:1985)   For an optimal experience, follow the instructions and steps in the given sequence. Proceed to a new section only after completing the preceding one, including running all code blocks.
%[text] %[text:anchor:H_D9E0B29B] ## Branches
%[text] In order to navigate the world, you have to make frequent choices. Perhaps you have come to a corner and you must choose between going straight or turning onto a new street. How are you going to make that decision? 
%[text] Branching code is frequently visualized with a tree structure, such as depicted here. Run this code block by clicking the  ![](text:image:8244) **Run Section** button in the **Live Editor** tab.
DrawIfThenTree(2) %[text:anchor:M_A2EFADE8]
%[text] ![](text:image:40d4) **Pro-tip.** If you would rather stick to the keyboard rather than using the mouse to run the code blocks, you can run the code blocks in the currently selected section by typing Ctrl-Enter together. 
%%
%[text] %[text:anchor:H_A96878C9] ### if/else branches
%[text] This type of binary branching depicted by `DrawIfThenTree(n)` describes a series of true/false choices that determine a path through a binary tree from the root to a leaf. At each node there is a true/false condition to check. The result of each condition identifies the next edge to follow which specifies a particular option. The number `n` specifies the number of options. 
%[text] ![](text:image:6cf6) **Try**. 
%[text] 1. Sketch the tree you expect for a larger number of options, e.g. with `n=3` and/or `n=4` and/or `n=5`. Then [run `DrawIfThenTree(n)`](internal:M_A2EFADE8). Do the graphs match?
%[text] 2. What happens if `n=1`? Or if `n=10`? You will improve this code in [Exercise 2](internal:M_BEA4B66A).
%[text] 3. Write code that will execute `disp("Hello, world!")` if `GreetingChoice == "arriving"` and will execute `disp("Goodbye, world!")` if `GreetingChoice = "leaving"`. Then run it several times to see that the code follows different paths based on the randomly generated value of `greet`. \
Options = ["arriving" "leaving"];
GreetingChoice = Options(randi(2,1))      % Select a random element from options
%[text] 
%[text]     The syntax in MATLAB for an if/then conditional is
%[text] ```matlabCodeExample
%[text] if condition
%[text]     code to execute if condition is true
%[text] else
%[text]     code to execute if condition is false
%[text] end
%[text] ```
% Write your code here %[text:anchor:H_02B2E4AE]

% % Solution
if GreetingChoice == "arriving"
    disp("Hello, world!")
else
    disp("Goodbye, world!")
end
%[text] ![](text:image:5019) **Reflect**.
%[text] 1. What do you think `disp` does? If you check the documentation, are you correct?
%[text] 2. If `Condition 1` is true, is it possible to keep asking further questions?
%[text] 3. Can you draw two different decision trees with four outcomes? If so, how do they differ? If not, why not? \
%%
%[text]  ![](text:image:5dc8) **Exercise 1.** Write an if/then branching statement that will print an appropriate greeting based on the time of day. You can use the MATLAB function `clock` to determine the time. Remember that to extract the `k`th element of a vector `vec` you need to use index notation `vec(k)`.
%[text] **Exercise 1 Solution**
% % Exercise 1 Example Solution 
% Alternate solutions possible with other subdivisions of time
% Morning means before noon, Day means noon-2 pm, Afternoon is 2-6 pm and
% after 6 pm is evening
time = clock;
currentHour = time(4);
if currentHour < 12
    disp("Good morning!")
elseif currentHour < 14
    disp("Good day.")
elseif currentHour < 18
    disp("Good afternoon.")
else
    disp("Good evening.")
end

%%
%[text] ![](text:image:5f24) **Pro-tip**. If you wish to choose between more than two options using an if/then branch, you may want to use the nested if/elseif/else branches depicted for higher values of `n` in `drawIfThenTrees(n)`. The MATLAB syntax is
%[text] ```matlabCodeExample
%[text] if condition 1
%[text]     code to execute if condition 1 is true
%[text] elseif condition 2
%[text]     code to execute if condition 1 is false and condition 2 is true
%[text] else
%[text]     code to execute if both condition 1 and condition 2 are false
%[text] end
%[text] ```
%[text] %[text:anchor:M_BEA4B66A] ![](text:image:2825) **Exercise 2**. Make the function `DrawIfThenTree(n)` work better.
%[text] Modify the function [DrawIfThenTree(n)](internal:H_7398A0C8) by adding a check for whether `n == 1`. If so, execute the following: 
%[text] ```matlabCodeExample
%[text] % Use a standard MATLAB function to plot a tree with a single root and a single leaf
%[text] treeplot([2 0])   
%[text] % Add annotation of the upper node
%[text] text(0.5+0.02,0.67,"if Condition")
%[text] % Add annotation of the edge
%[text] text(0.5+0.02,0.33,"Code to run")
%[text] % Add annotation of the lower node
%[text] text(0.5-0.07,0.5,"True","FontSize",8,"Color","blue")
%[text] % Turn off the axis to make the plot look more like an illustration
%[text] axis off
%[text] ```
%[text] **Exercise 2 Solution**
%[text] See the code in [`DrawIfThenTree(n)`](internal:H_7398A0C8)
%[text] Otherwise, `TreeNodes` should be defined as it was originally. You can check your results by running [the code at the beginning of this section](internal:M_A2EFADE8).
%[text] %[text:anchor:H_3852C3FD] ### Switches 
%[text] A switch may be an appropriate structure to use if there are a finite number of distinct options that govern the outcome of the condition, such as a traffic light, a dice roll, or a drop-down menu.
%[text]{"align":"center"} ![A stop light with green on top, yellow in the middle, and red on the bottom](text:image:2218) ![A six-sided die in green.](text:image:95da)
%[text] 
% Choose a value to test this switch statement by causing the code to run
SelectedValue = "red" %[control:dropdown:5700]{"position":[17,22]}
switch SelectedValue
    case "red"
        disp("When the light is red, you should stop.")
    case "green"
        disp("When the light is green, you should go.")
    case "yellow"
        disp("When the light is yellow, you should slow and stop if you can do so safely.")
end
%%
%[text] %[text:anchor:H_1F4A165C] ## ![](text:image:2312) **Application of Branches: Chaos Game**
%[text] The chaos game is a set of rules that can be applied to many different polygons with varying results. This implementation investigates the chaos game on a square. Beginning at a randomly selected point, at each iteration of the game a new point is selected that is the average of the current point and a randomly selected vertex of the square. Eventually, it will be convenient to be able to easily identify and compare vertices of the square using the map presented:
ChaosSquareMap
%%
%[text] %[text:anchor:M_269E55D7] ![](text:image:11b6) **Exercise 3**.
%[text] Write a switch statement that switches on the variable `NewCorner` with the cases `1, 2, 3,` and `4`. It should set the value of `NewCoords` to the appropriate vector in each case, that is `[0,0]` or `[0,1]` or `[1,1]` or `[1,0]`.
% Initialize the value of NewCoords to a result it can never have inside
% the square so it is easy to tell if you update it correctly. Suppress the
% output to prevent clutter.
NewCoords = [-1 -1]; 

% Randomly select a new corner from the set 1, 2, 3, and 4
NewCorner = randi(4,1)      

% % Solution to Exercise 3
switch NewCorner
    case 1
        NewCoords = [0 0];
    case 2
        NewCoords = [0 1];
    case 3
        NewCoords = [1 1];
    case 4
        NewCoords = [1 0];
end             

% Run this section to test that the coordinates in NewCoords that you get out 
% are what you expect based on the value of NewCorner

NewCoords
%[text] Save this result because you will be using this switch statement a bit later.
%%
%[text] %[text:anchor:H_A3E6FB3B] ### Starting the Chaos Game
%[text] Moving on, to start the chaos game, we need to select a starting point. To make the case that the starting point does not impact the eventual results, let's choose that starting point randomly in the code below. The line `StartingPoint = rand([1 2])` has been left unsuppressed so you can track the initial value, but feel free to add a semicolon to suppress the output whenever you have convinced yourself that the code works as expected. In fact, it doesn't matter if your random starting point is inside the square or not, but it is a bit easier to visualize what is going on if the initial point is visible. 
%[text] ![](text:image:2df7) **Try**. Run the code below several times and observe what happens for different values of the `StartingPoint`.
StartingPoint = rand([1 2])         % Generate a random starting point in the square
s = StartChaosGame(StartingPoint);
%%
%[text] %[text:anchor:H_3F29F217] ### Taking the Next Step in the Chaos Game
%[text] %[text:anchor:M_69327B1D] The next step is to randomly select one of the vertices of the square. This code block selects a vertex by number but requires the code you wrote in [Exercise 3](internal:M_269E55D7) to translate that selection into coordinates that can be used to update the chaos game by moving towards the chosen corner. After you have added the switch statement, run this code block at least 4-5 times.
NewCorner = randi(4,1)

% Paste the switch statement from Exercise 3 here
switch NewCorner
    case 1
        NewCoords = [0 0];
    case 2
        NewCoords = [0 1];
    case 3
        NewCoords = [1 1];
    case 4
        NewCoords = [1 0];
end

s = UpdateChaosGame(s,NewCoords,NewCorner);
%%
%[text] %[text:anchor:H_804F1C09] ## More Chaos Game Steps
%[text] As you may have noticed, it gets a bit tiresome to add additional points by running the code by hand each time. In [LoopsSoln.m](file:LoopsSoln.m), you will learn how to instruct the computer to repeat code on its own. 
%%
%[text] %[text:anchor:H_C7F87D59] [⇦ Main Menu](file:../../MainMenu.m)
%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.
%%
%[text] %[text:anchor:H_672AA15A] ## Helper Functions
%[text] %[text:anchor:H_7398A0C8] #### DrawIfThenTree(n) Function
%[text] Follow this link to return to [Exercise 2](internal:M_BEA4B66A). There is a lot of code in this function that you may not understand immediately, but the comments explain why the code exists. You should read through the entire function at least once before you complete Exercise 2.
function DrawIfThenTree(n)
% This function takes an argument n giving the number of options and
% creates an if/then tree depicting choosing between them based on an
% appropriate number of conditions.

%%\ Solution Code for Exercise 2 is here
if n == 1
    treeplot([2 0])
    text(0.5+0.02,0.67,"if Condition")
    text(0.5+0.02,0.33,"Code to run")
    text(0.5-0.07,0.5,"True","FontSize",8,"Color","blue")
    axis off
else

    %%\ This code generates acceptable trees for values of n > 1

    % Set up the connections between nodes
    TreeNodes = zeros(1,2*n-1);
    TreeNodes(1) = 2;
    for k = 3:2*n-2
        TreeNodes(k) = TreeNodes(k-2)+2;
    end
    TreeNodes(end) = TreeNodes(end-2);

    % Plot the tree and extract the coordinates of the nodes
    treeplot(TreeNodes)
    [x,y] = treelayout(TreeNodes);

    % Set up the labels on the tree

    % preallocate a 2n-1 vector of strings for efficiency
    TreeLabel = strings(1,2*n-1);

    % Label the root node
    TreeLabel(1:2) = ["Option 1","if Condition 1"];

    % Walk through each of the elseif decision points and label them
    for k = 2:n-1
        TreeLabel(2*k-1:2*k) = ["Option "+k, "elseif Condition "+k];
    end

    % Label the final leaf, the outcome if every condition is false
    TreeLabel(2*n-1) = "else Option "+n;
    text(x+.02,y,TreeLabel,"FontWeight","bold")

    % Calculate the locations for the "True" and "False" labels and then
    % print them on the figure
    yOdd = (y(1:2:2*n-2)+y(2:2:2*n-2))/2;
    yEven = (y(2:2:2*n-2)+[y(4:2:2*n-2),y(end)])/2;
    yVals = zeros(1,2*n-2);
    yVals(1:2:2*n-2) = yOdd;
    yVals(2:2:2*n-2) = yEven;
    xSkip = zeros(size(yVals));
    xSkip(1:2:end) = -0.07;
    % Note: The choice of 0.03*n as the initial even xSkip value is an approximation
    %       It works well for n in [2,6], but then it begins to fail.
    xSkip(2:2:end) = linspace(0.03*n,0.02,(n-1));
    xVals = repmat("True",size(xSkip));
    xVals(2:2:end) = "False";
    text(x(1:end-1)+diff(x)/2+xSkip,yVals,xVals,"FontSize",8,"Color","blue")

    % This tree is much easier to read without a visible axis
    axis off
    % And zoomed in to fill the available space
    xlim([max(.1,.5-n/10) min(1,.6+n/10)])
    ylim([max(.1,.5-n/10) min(.9,.5+n/10)])

    %%\ This is the end of the tree-generation code for n > 1

%%\ Solution Code for Exercise 2 is here, too
end
%%\

end

%[text] %[text:anchor:H_BFFFB22C] #### Image generation code
%[text] This code is purely informational. Many of the figures that you encounter throughout these scripts are created in MATLAB. Here is the code that generates several of the images used in this script such as the traffic light. 
function Trafficlight %#ok<DEFNU> 
% This function generates an image of a traffic light oriented vertically
% with a red light above a yellow light above a green light.

figure

% With Curvature of [0 0] these commands would give rectangles, with
% positive values of Curvature the corners are rounded
rectangle("Position",[0 0 3 7],"Curvature",[.25 .25],"FaceColor",[.2 .2 .2])
rectangle("Position",[.75 4.75 1.5 1.5],"Curvature",[1 1],"FaceColor","red")
rectangle("Position",[.75 .75 1.5 1.5],"Curvature",[1 1],"FaceColor","green")
rectangle("Position",[.75 2.75 1.5 1.5],"Curvature",[1 1],"FaceColor","yellow")
ylim([-.1 7.1])
xlim([-2.1 5.1])

% This figure is prettier when drawn with equal measurements along both the
% x and y axes, but without the axes showing
axis square off
end

function ChaosSquare
% This function generates the annotated image of the square board for the
% Chaos Game where each corner is labeled with only its integer label

figure
rectangle("Position",[0 0 1 1],"Curvature",[0 0])
xlim([-0.2,1.2])
ylim([-0.2,1.2])
text(-0.05,-0.05,"1")
text(-0.05,1.05,"2")
text(1.02,1.05,"3")
text(1.02,-0.05,"4")

% This figure is prettier when drawn with equal measurements along both the
% x and y axes, but without the axes showing
axis square off
end

function Data = StartChaosGame(StartingPoint)
% The function StartChaosGame takes one input value, the StartingPoint
% coordinates and it returns one value, data, which contains information
% about the structure of the game and how to draw it

ChaosSquare                         % Draw the board on which this game will be played
hold on                             % Continue drawing on this figure

% Graph and label the starting point. Note the coordinate shift by 0.02 in
% the x direction for readability. 
s = scatter(StartingPoint(1),StartingPoint(2),"o","filled");
t = text(s.XData+0.02,s.YData,"Starting Point");
hold off
c = copyobj(s,s.Parent);   % Create a scatter plot object to identify the selected corner
l = copyobj(s,s.Parent);   % Create a scatter plot object to identify the last point

% Save the information about the game to be used in updateChaosGame later
Data = struct('s',s,'t',t,'c',c,'l',l);
end

function Data = UpdateChaosGame(Data,NewCoords,NewCorner)
% The function UpdateChaosGame takes two inputs, the data generated by
% StartChaosGame and the coordinates NewCoords identifying the newly chosen vertex
% It returns an updated value of data containing information about the
% current state of the game

if all(NewCoords == [-1 -1])
    % This is the default value. You need to update the code before you get
    % here. Post a warning if it isn't updated at this point.
    warning("These coordinates are outside the square." + newline ...
        +"Did you complete the switch statement in Exercise 3?")
    % Exit the function because the code is not ready
    return
end

% In the annotation space coordinates, the corners of the square have
% x = .3 or x = .735 and y = .23 or y = .81. Shift the coordinates to
% account for the transformation by (x-coords)*(.735-.3)+.3 and
% (y-coords)*(.81-.23)+.23

annotation("arrow",[Data.s.XData(end) (Data.s.XData(end)+NewCoords(1))/2]*.435+.3, ...
    [Data.s.YData(end) (Data.s.YData(end)+NewCoords(2))/2]*.58+.23)

% Add the new points to the scatter plot
Data.l.XData = Data.s.XData(end);
Data.l.YData = Data.s.YData(end);
Data.l.MarkerFaceColor = "g";

% Determine how to shift the text to stay away from the new arrow. 
switch NewCorner
    case 1
        xShift = 0.03;
        yShift = 0.06;
    case 2
        xShift = 0.03;
        yShift = -0.06;
    case 3
        xShift = 0.03;
        yShift = -0.06;
    case 4
        xShift = 0.03;
        yShift = 0.06;
end

% Update the text printed next to the data points based on how many steps
% into the game you currently are. After the third move, assume the player
% understands the structure and doesn't need additional labels cluttering
% the game board
switch length(Data.s.XData)
    case 1
        Data.t.String = ["From here move halfway" "towards the corner"];
        Data.t.Position = [Data.s.XData(end) Data.s.YData(end) 0] + [xShift yShift 0];
    case 2
        Data.t.String = "Now start here";
        Data.t.Position = [Data.s.XData(end) Data.s.YData(end) 0] + [xShift yShift 0];
    case 3
        Data.t.String = "And now here, etc.";
        Data.t.Position = [Data.s.XData(end) Data.s.YData(end) 0] + [xShift yShift 0];
    otherwise
        Data.t.String = "";
end

% Add the new information to the data structure
Data.s.XData = [Data.s.XData (Data.s.XData(end)+NewCoords(1))/2];
Data.s.YData = [Data.s.YData (Data.s.YData(end)+NewCoords(2))/2];
Data.c.XData = NewCoords(1);
Data.c.YData = NewCoords(2);
Data.c.MarkerFaceColor = "r";
end

function ChaosSquareMap
% This function generates the annotated image of the square board for the
% Chaos Game where each corner is labeled with both its integer label and
% its coordinate values for reference

figure
rectangle("Position",[0 0 1 1],"Curvature",[0 0])

% Label each corner with its corresponding value
text(-0.05,-0.05,"1")
text(-0.05,1.05,"2")
text(1.02,1.05,"3")
text(1.02,-0.05,"4")

% Label each corner with its corresponding coordinates
text(.02,.05,"(0,0)")
text(.02,.97,"(0,1)")
text(.87,.97,"(1,1)")
text(.87,.05,"(1,0)")

% Set the range and domain for the viewing window
xlim([-0.2,1.2])
ylim([-0.2,1.2])

% This figure is prettier when drawn with equal measurements along both the
% x and y axes, but without the axes showing
axis square off
end


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[text:image:4dc0]
%   data: {"align":"baseline","height":216,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAboAAADYCAYAAACdvCZgAAAPR0lEQVR42u3dsW8VyR0HcM4g62QhixDkJASQ3dtSmoiCwohUFiJVJEMaijtEKhzJ0kmULqhNQYe4xhKN01z+AdO5CqaII0VE1klUKSLkv2DDvDujZ\/PAb\/ftzO7Oflb66qSTHj92Zmc+7Hu7M2eKojgjIiKSazSCiIiATkREBHQiIiKgExERAd1pcTgcDke14yboQOdwOBygAx3oHA6HA3SgSwLd+\/fvi52dHRERGZG9vT3QdR260JFnPpyCiIh8muXlZdCBTkQEdKADnYgI6EAHOhER0IEuCXSzM1PFjcWvpUQWF6aPtaE20V\/asPvnBLqMoQsd\/r8f5qVE\/v7k18faUJvoL23Y\/XMCHejExKm\/tCHoQAc6g170lzYEHehAZ9CL\/tKGoAMd6Ax60V\/aEHSgA51BL\/pLG4IOdKAz6EV\/aUPQgc5ANuj1l4AOdKATE6f+0oagAx3oDHrRX9oQdKADnUEv+ksbgg50oDPoRX9pQ9CBDnQGvegvbQg60IHOoNdf+ksbgg50BrJBr78EdKADnZg49Zc2BB3oQGfQi\/7ShqDLGbq\/fciPLQzoDHr9pb+0Iehqge7HouUH6Ax6\/aW\/tCHoQCcmTv0loANdTOg2NjaKw8ND0Bn0or+0IejyhG51dbVYWVmJgh3oDHr9pb+0IehaAd38\/HwU7JqCLlxQOeXJtxePtWHMWluP54rv7l4Y\/DfV4A\/1csrdW+eTTtIHL68lPb8U10Zq6FK04b0T1wXoGoAu5MaNG8X+\/n6nobs74mKSann26FLUvnr19HIv2jH2BL24MJ3dtZESuqbaEHQNQReytLRUK3ajjpRfDUh7J+m+9FeubZgLdE22Iegagi4FdiZOk\/RRVq7PDO7yc8rJu4OUk3Su55VDG466awRdg9DFxs4P2NV+ZwxfsXgIwIMUanWzlodRWghdTOxM0iZpbagW6EDXCuhiYWeSNklrQ7VAB7pS0L17967Y3Nz8Yra3t4vd3d1Bhv9\/eNLyS9DFwM4kbZLWhmqBDnSloAtgnYZVHQlYgs4kLUBQC3TZQlcXdiZpk7Q2VAt0oGstdHVgZ5I2SWtDtUAHulZDNyl2JmmTtDZUC3SgKwVd2IEgNXSTYGeSNklrQ7VAB7pS0N2+fbsR6EK2trZGYnb\/\/v2RK22MC11Ys9IkDTptqBboQDfWu3CxUvW1g3EuiioXnEkadKBTC3Sgaxy5HKD73A4JZT8POtCpBTrQtRS6SV8gbyN0qSd10IFOLdCBrgR046xu0hbkQAc60KkFOtCVhq5LyIEOdKBTC3SgayV0da532cYLFnSgM0mrBboWQxcWan7x4sWpCzuPyri\/7+W+qHPqSb3K6xOgA51aoLNNT4VjnFVV6lrMuc3QtRUe0GlDtUAHusjQ1Y2clVFM0tpQLdCBrjXQxUAOdCZpbagW6EDXCuhiIQc6k7Q2VAt0oGscupjIga7d2Xt+5Vgbvnp6WbuYpNUCXV7QxUYOdO3PcBuGNtUmJmm1QJcNdCmQywm6cLcTah68vJYtdPdunS++u3sharYezyU5r1T9BQS1QNdS6MJ\/Ux05DI4waR7VubH4dTbIDZ9Xyjx7dCmb\/gKCWqCrD7o3dUG3vr5epDxivduW60Bs8mu3lDFxqgU60EXJfLidq\/fP\/Hjs7Ox80rFl\/jVd9qLLdSCGu50n31xM9hXp8HktLkwP+ixGwp9t4lQLdKDr4l8adDWeVwDuqEaq1VtSPYxi4lQLdKADXULo2lorPKyR+rdA0KmlFuhABzrQmczUUgt0oAMd6EycaqkFOtB18ncz0JnM1FILdKADXU2vTYBOLbVABzrQJccn5eAAnVpqgQ50oMt6cDQNXczlufowcc7OTAFBLdCBzuBoG3ShzlHNUF9\/lUt4sT98QxDaMfbSZvABHehABzrQ9WrJNrVABzrQgQ50oFMLdKADHehABzq1QAc60IFOf4FOLdCBDnSgAx3o1AId6Dr4bhvoTGagUwt0oLNND+hABzq1QAe6vkJXdT+6q3PnQAc6+IAOdKDLa1HnJiZo0IFOLdCBDnSgM5mBTi3QgQ50oAMd6NQCHeg6+bsZ6ExmoFMLdKADXU2vTYAOdPABHehAlxyfJgcH6EAHH9CBDnRZDw7QgQ4+oAMd6EAHOtCpBTrQgQ50oAOdWqADHehABzrQqQU60IEOdPoLdGqBDnSgAx3otKGxDDrQGRxtmaCHd0zYejynv0CnFuhAZz+6M9lN0K+eXh7EZAY6tUAHOtv0ZAmdSVobqgU60IEu27Uu+zBJh69n68yzR5cGNVJneL\/CrrfhcMK3OaADHegs6gy6CSeZHJNrG4IOdKADHehOyd7zK8XszFTWyJX9TbtLbQg60IEOdKAb8wGbcP3FSJOIhvoP78wme0gpVhsOZ3FhGnSg83oB6EDX1gz\/vrRyfSarPvOQDehAB7raX5sAXfcy\/B5izOsddKADHeii4eP1AucGOtCBDnRWRoEB6EBnLIMOdAYH6EAnoAMd6Ho+OA5eXjtWJ9Q1mbU7wy9xX507By5jGXSgMzjGeVAGdM4LdKADHehAZzJzXtoQdKADHeiA4Ly0IehABzrQAcF51XK9Vl2eDHSg6xV0bX25GnTdaMNJJ90qay7WdV51\/Z1Tf94\/WkEHupLQtXW5LNB16wX\/Sf6OR6kKXXhytmq\/D9f31SXoQAe6LPejA109bVjXGpYpXwnp8+97oAMd6Hq0qDPouolArn0GOtCBDnSgAx3oQAc60IEOdKAT0IEOdK2fOEEHOtCBDnSgA11NTwyCrtvvkoEOdKADXScfV\/d6AehAF+9JUtCBDnTeowMd6EAHOtCBDnSgay5he56j8wr700EOdKADHehAl9WEHq5z0IEOdKADHehABzrQgQ50oDsO3Z\/\/cH4wceaQ8ABQSuhePb086LdJ1p5MCV2ZJcdS9lvYQb1qG457Tk2O5Vjtdu\/E9Q460IHulNXkc0xs5Ca9BlNDN069AM7iwnTyvlq5PpPt6wUpAzrQge7nnJ3KH7nYuxHU0V9thK6pSTrmOE49vvaeXylmZ6ZABzr70TVZ6y9\/nC2++uqnOlfmzg3aMKc8vDPbid8DuwBdqj579uhSVr\/fhjv+2G026s4bdKDLdpseSbNdTh+h86BSd84JdKDLHjo4xn9yr+5rowywoAMd6EDX690LQNdN6Nr4egHoQAc60IEOdKADHehABzrQgQ50oAMd6GzTAzrQgQ50oAMd6OI+OSjdmThB57xAB7rWDY4270cnoMvpOuzr06SgA52VUQR0oAMd6EAHOgEd6EAHOtCBTkAHOtCBDnSgG7UKfli\/8OR6fGV+u5x0seaYiz2D7vPt3UQfgw50oOshdHdH7FVV5s\/93OfL7GkWVnAPCyyHczuKO7rjn08FXYp929oMCOhABzp3dJK4v7YezyWFLsVO3KADHehABzrQfUy40y1z7YLO+AId6KK83wY6idVfV+fOFU++uZgVdG1etAB0oLPW5RgXUvi9yUCUOvor\/H4ZPlPmN8suQOcpWdCBroPQhQkp\/Cs1xx2QpVnoyt79gM74Ah3oWvc7Quq1LsV7dEAAHehABzoBHehABzrQgU5ABzrQga43rxeATkCnv0AHOtCBDnSg01+gA10foWv7fnSvnl4e1AxPAKZY9zJMzqkSVh0BXTfOK9RLcU2cXNIuRc3wnmTM8QU60PkX5ynIpWq\/MNBPLuycIrm9DpIjdMPXYa5ZuT4DOtCBLvdVWEYNxlQBnWuj6aRcohB0oANdS2qF\/oqVk3eOoEu\/TU\/ZeuGOJ+Y1MZyLs1PFb355Nlm92AtNgA50oFMLdB2ATkAHOtCplWmtsp+xH52ADnSgUytr6MKi4ke1qjxV2vdtekAHul5CN8nu2XV8Hgigq3q9VtmpHXSgA507Ond0aoHuh3z3owMd6EAHOrVAZ4Ue0IEOdKBTq75aZe9+QCegAx3o1Mr69YJJobPmKuhABzrQqQU60IEOdKAzSasFOgEd6EBnklar5uw9v3KsVlgMGXQCOtCBTi21QAc60IEOdGqpBTrQgQ50oFNLLQEd6HKGrqkdkE2caoFOQAe66NA1uQOyiVOtrtUCI+hA10HomtoBeWoqz4kzrMAPhHzbEHSgA11Hv7pMtQPyby+d\/XhOv\/rF2Wwm6YOX1wZfy8bebTnntS7D6wVX585NtOmq\/ehABzrQNZ4wgaX83THH32FyXtS5jhfOQQc60IEOdKADHehyg+6vP2PXRC6ADnSgA11W0NmPrpXQNXncBB3oQAe6rKAT0IEOdKADXWN3P6ADXZlje3u72N\/fBx3oQAc6bdiVBRlyzL0Ti0zUCd3m5maxtLQ0KXagAx3oQNfvNmxyQYZcUyd08\/Pzk2IHOtCBDnTaEE7thm5C7EAHOtCBzleXqRZkyDF\/uv374ubNm8eytrZWO3QTYAc60IEOdKCT6jn87z+jPS55ErqK2IEOdKADHeikO9BVwA50oAMd6EAn3YKuJHagAx3oQAc66R50Rwnv2oEOdKADXW\/aEIrthG53d7dS1tfXT4VuDOxABzrQgQ50Ehe6cbCaNF\/ADnSgA521LtO0S5nlxkCXD3SHh4dJoPsCdqADHehA1651LkGXF3ThK8hU0H0GO9CBDnSgA53kA90I7EAHOtCBLh\/o7EUHuhHYgQ50oANdPtAJ6EZgBzrQga7P0JW5Axq1eG\/Zz4Ouf9AFbJqCLryeADrQgc7rBV4YT\/jU6ah\/LHT986dBN85L3xGRAx3oQAe6\/rRh01D09Y6uCeiGkAMd6EAHOm0oeUF3AjnQge7ThH25js7p4Z1ZkxnoQCedgW4EcqAD3acJ53F0TuHuzmQGOtDJJNA9ePAgCXIrKyuDVVhABzrQgU4bSvKnLjc2NorV1dXSCXhNiBzoQAc60GlDib+oc9VjnHfwTkEOdKADHei0oXQXujGQAx3oQAc6bSjdhG5M5EAHOtCBThtK96ArgRzo6oRucWF6MDi7nnAeR+d079b5qLWefHvxWBvm0H6pz0sbStP5x873xZs3b47l7du30aBbWloqgxzo6oRORER+yvLychToAnL7+\/tl\/xjQgU5EpP3QVUQOdKATEWk\/dBMgBzrQiYi0G7oJkQNdVej29vYGHSkiIp9mbW3tJDb\/+ZA3ZXNwcPCv169f\/7vKZ4fyO9BVgM7hcDgc3birajKgczgcDtCBDnQOh8MBOtCBzuFwOEDXwvwfxr6xjHEQgvcAAAAASUVORK5CYII=","width":442}
%---
%[text:image:3b41]
%   data: {"align":"middle","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAArElEQVR42mP4\/\/8\/AwgnJiYapKamfgfS\/ynBUDMMYOYywBggiYcPH\/6nFIDMAJmFYQHIdmoBqFm4LZjrYPd\/gpoyGIPYVLeA5j4gbEASHJNlwZYtW\/93dHTixDCDQTRMDKRn8FhATBDNmTOH\/CAiBI4cOQI2HETTLBW9fv2a\/FRUtPXVf\/WeuyRhkB6iLQBp2HLvP0kYpGfUglELhpMFNM9oNKlw6FHp06TZAgAoeVix9Bg9oQAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:04d7]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:1985]
%   data: {"align":"baseline","height":23,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAEp0lEQVR42t2a208TQRTG67OJxvv9fiGoD6LGgPiCGo1G\/wljTKDl1pL00RuKIKCIIiKg6ItB8IJ38K4Panz13RcfSBBBQQHRek4ys\/kYpu1uu2132+Sku6eb6X7zmzlz5ux6PEn6lJaWbi0uLu4mGyLrJWvMz8+f4UmnjxA5QhZS7HNZWdnUdNE5hQR9EsLGioqKWuj7kRRbUlJSmS40D4Co4yD+rfAPEdW5rhdKQj4KQQM4J0n0DhjCVW4XuR9oHlV\/J98rSZVsnmuF0nz8oNIsLCxcFQwGp4vf86AjzrhV5D4dTTq+Tr8d0VD95fP5Frpx2L4XAgYlTQpMq+n8DxKm4+0wV6tdJZIo7YWbPwbi26QfqdL5S+H\/7SqqdMPvJE2iOFPOTUEzpM5bpEodUOMWkXs06yb7r6qZEc5dOn\/hKqqQCESiOYkqic4Ff62jRZKg3XCzJ0B8q0akjupzSZU6aZGTl5Q34kZ\/BgKB2ezzer3LOMcNJ5SpSvJIlY7POTWn3QUBpRzEt0QQqYvMzxxNlW7staRJQ3gO0Bw1IdSYz9Qx28Bf57QhuxNu7iSIbzYhclKEpvZ6HElVR5OOl5qkGZEqdcB5p9DMC0OzyYJIXaTuFr4R6rzFTkj3jK1WHDRDarSmdnPAX59qkbkQaU+B\/7IqglM7+g4qVqu5rhzaeeoIqpC2RaVJN52pGfYbdFRlW0iVrr2QcppkFSC+MUxUNSt0AlU6f5JSqpCuGcUtv9+\/JExZ05JQpErf2eC\/mOxIi4v6aRDfEGGdtCJUjeCPhW+Uk5BkCu2xQjNGoQZVWl+30Pk\/4W9I1tzM0RWfeVhFyXysCp0QyaHoPUZtLU\/G3OxWadIfL+Dilt1CMZrTtZuB6qVE7zezdUVnDv0mctlYhKpUHyaFKoR6SzTjEYr\/pVBtTDhNLDZz0m1ydxKrUHWdfiCp+ny+FYmgKUP8sHx8YJamDUK1VDnVtHs5wSFTDeLrLOw34xGqrtf3E0IVgoBRiiwoKJhvlqZNQjEubIKOb7Jr3TQaxeIyF6+sbMFsEKqu2\/ZShQZVmsPJFhqOKrVzxTaaWFTW7SNNCD3IlUI08h2KYXOO63eXpErtrYwnCHWpNDniWqVpsxlUacnLAhDNsa6bWTqaolIQSrFVwei6FxdVGlZ3baY5SNav2KCdVLlYblXkRqB5FnqvOlYKNgWjUJjsTEIZpzbXWIm0d9QCMlfneI\/oFKFKhoZgWs0GIP7zv+qDHu7BeOZVAoSqWZqEM+73+9eaodlpN80ECjXiBwLih87Rnoith4vrgGZlvJEyQUJVqrdNUaULOmRp0U6a8uUMssNo\/BDYBqHDnKlppt21qDTxwQ7vGhywbkbrxBrN1Bsny9DRbFcLxV6vdxad\/3C6UJyryvRrU7OgdfBjPYivcIHIkCYX79BSpZObLqYZkSq\/kicjaqZ04oMcrpS7SGRIzeJIy60JVDk6SZpcbRdDeRr5v2hyU6fbV\/l8VVlXm5lcX0wJsTveYpMVw14PzMOGNBQqE4h+3M8x5hti3UwH64S52y6D0YALA49Z6+P3hCXiDLH2fEsjgd+ZKr9wyRr\/A+UKAPezYlA8AAAAAElFTkSuQmCC","width":23}
%---
%[text:image:8244]
%   data: {"align":"baseline","height":25,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAZCAYAAAArK+5dAAADpklEQVR42rWS+U8TaRzG\/RP0BxMTzcYYs654EIO7xl3FH0yMRwyKRnGLeGu3TkvrgQeKglfURcGVsBjZuMiyLOABLhgtq\/GoFwr1KNjKZdvpRc8phQItj+8MhXQcimvQN3nmeJP5fJ75zowAMOJrhjvEHohRk7SSrP8qgh\/3zkAg6Ef1q3IknVnVnX35nL38RhU9nPAEP+yKRrA3AH\/ADWdHCzJvpCIxax2qG3Soo72fHYEgRj4NPUEf3J1NsPs0RKLFS0MFNuUshfTiHijrdcMTRFNTwHTpYWtXo8V1Cw32Yrx3\/we95y7+fpKOeftm41DxWaiaTP9LcL2iki+YIo6CxVvDQbX2EtSZz+Oh\/iAeGdLJfQXUpmvYeflnTBdPR9xWEURbKC6RBGVXy\/mCSZu\/Q6OzAg1tRVBbcvHYcBR3mmX4V5uEsvoNUDadwmurEglZC5BamPnJNyguucIXTFz\/LQH\/juemM1zruy0KVL1bhyv1iShQr0GWKh7xv87G1C3RuKi8GRFca\/Bw58Kif\/iC8YkToSIjudeagupmCSp1ffDCl2sgLZiPyRujMHP1XCyIX4F40YaBEYWPioU\/17u460sFf\/EF4xIm4FbjJlQRcPnbtSjViHBaGYc5u6MRl5qEnNKrKLp5H8W3VXioNQ\/anIXXtDpQa2SQ\/8effMGYleNRpklEyRsR8mtWY0nG9\/iJWojzYeDbtTq80LuHhD9ttnP3eRfy+YLRy77BpboEbMyNxSxJLDLy8zgwm8onGjwjD0eaeTj8UaONK5GTm8cXjFw0Vjtq8VjTks3LmX7w9Qd1EcGR4CqdBTVkL\/u3HL6ArBg2MrnCptFowDAMhlrBYBA9PT3o6upCZ2cnfD4fGK8Xbo+H28s8my0QRJFMSzucbsYnVrC3NyLc6XJxeydPZ\/IF\/Tl+4iT9uXBvGNzucJC9DoQ4QkHGkWM8gUKhGIhcLkdycjJkMhmkUikoihqAuwjc4XCirc3O7YU4QkHaoYxB36CXax4QNPd8BLdabXC7PQhxhIL9qWn0YPBAgIV3E7h\/SLjZbIHD6USIIxSk7NnPE4SPhaL6xkJR2yGRsPkFYjEb8QCcNplhI7IQRyjYsSuFFjTv7m\/eQZq3k+YMae7mN7f0wQ1GmrsOcYSCZPkOejhwvd4AI21CiCMUbKdkdDjc7\/ejg3zU9nbyrzNe7gM6neR3tDtgs7URgZUIrJzAyAoMRrS+14PlDCrYJpbQXyr9zA9UsnMstTLoTgAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:40d4]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAcCAYAAACZOmSXAAACP0lEQVR42mNgoCLIy8vzys\/Pf15QUNDNQE9QWFioBLT4CxD\/B2GgA5LoZjnQwi0wi6H4TVlZGS89LA5FsxiGK2hqcW5urijQkidAfA+L5S\/S0tJYaWU3I9CCjUC8GYg\/YfM9MBH60yq4G6GW1OEIdhBeT1VLQUEJNLQDavg2IJ6Kx\/IfwJQvQLGlDQ0NbECDsoEGXoEa\/BUYrDpA+gMey0FBH0+RxdnZ2fJAg26gGVwKdEwBPouheCslFgsDDbiDZuC2kpISbiD9lAjLfwILISFyE9YKNMPugwxDSnDE4GSiLQwNDWUGxSfUcjkgPgU15DMQ6xUVFamBEhMJlu8nqowGWtoCLThAmqYlJCRwAAsTdmD0zgTy\/UBsIH2GBItB+C\/IExgWggwHSkQB8V4g\/odF4zmgg1Rh6oGOmESixdiLW6BBlUDBdwQ0\/QCGiC80CnLItBiEr6JYXlxcLAItInFp+AbE7lCHBgDZfyiw\/D8wygwxymho4fENTfFnoLgDksU\/KbEYivtxtURApdVlqKK7QFfqQ4M6HIh\/UcFicD0PSmNYHQBNfMWZmZmCUB8XQFMqqZaAsmQNKFsCPWUFpBciJeYogtkuKyuLB2h3EFDzJhItfgZMoLo42nigqvcgSfU20BGLSLBYCU\/jQx9UJAPVmBBte3l5OT8RWfIrMYbm5OQogqKE1DK+FV8JBsoRxJqFM9HhsVwciL\/jsLyQHi3V+VgsrmGgBwAGrRFyHJNUVVLJATuBli4FYnVKzAEAi4Bewge+mbwAAAAASUVORK5CYII=","width":23}
%---
%[text:image:6cf6]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
%[text:image:5019]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAsCAYAAAAXb\/p7AAADlklEQVR42u1YS0hUYRQejR4UvR+SvaCyWiS2DIoCKWjVYzG2SsYWQ+a8HRwXFkOgqdGLSoSeqyBaJUGLCKGkNpGtgiyScnpYBpaU5au+E+eH03Wu93rvP2OEFw46955z\/u8\/7\/\/3eDQ+4XD4Eui65199AK4d1DEJcBLgfw0wGo2ujkQi1yoqKlY5AFgDqnWw5lpaMxaLrbBkDgaDm7HIEKjTCcjxPqFQqABrdYEGsHaRXaESCAyCXpNFMwwuReDw\/77xusurQGJna0ysPR2K94CnGdQKesnUyu92J5PJaelk4c51Chzcu9dp0O9nkO3yvd\/vnwqlEbzvAf2yoB5sIkwyBt0doJ+0Qbdu2AXyC8UrOVuNQH5Q3IJegfrTfH8ikwC\/A9hjsdaYCQQCG6D4vVj0DShB7+HKXMGaQ\/EFADEGrPhJdn1GAhoZvRDKX4jFTvt8vhlWchSD4D0OGiE5AH9eXl4+PxNF+IoCB8sccyBfreQB8qJWcAC0CYqHeYE2cqEDNTmQvcc6hlC+CnXWq\/PCtTtdeGGr0HNWFz7aeTcr\/eT1eqe41PVWJYxd62zkovwXqQ6Cv8vErm9r8MZNEctLVf9Ph4GwecSOjPSQu8V28e6chmRrFPq28btHJhhSBKDIBH0B726HEDilAWCtsGCx6MmjMNgaHqBkiygPl3UmHE1OrjOEiqoqsqDHGizYxrqGAXCOriL9jJUOoq3lO9UDQItpQGD3PtXZRapFHB51oSchwiWsDWA8Hl8Cpb2svA+WWO4AXJ7Q0Z1IJObq7sUBN\/UQLr0hrHfANSCaQihrobiBf+dC+QOxSNk4MrdEyN1VvRy6T+DdVbOp2wpcCyutN8yDahjtVZ3A4sS2ALwflYxhaK1n0C22QfL8dkuNRYZBlKxxRLj6gg3XNgj+w8beLOriHcv50gocJ8wsfP\/ASgfMDlRs8XzwfGPeThMr2QcpEqFprJmPSoSwSvMYfCcFX6nFlNPEfAGrUuC1GkhxQpspTnTfKysrFxl5qqqqZouy0mU81ZmApB6cp2vKlrFVk+Z7TGRuPOsXRZSNfGYmEO\/ofoXmOiKKS3Ga6wPYeRNxk9Vo49BONAIL1mUdIBa9bxPgn+zMOkAqIXDdQbp1sKAy6uWeyWd0Cyuk5LDh3pTtez\/NSVJqNwbh5kNZB8htkTrP1zHA9dM1nZ07nExmc50ZQGA7M+GxyLden9MA\/OLm\/KKe34xPoKAD7jPkAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:5dc8]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:5f24]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAcCAYAAACZOmSXAAACP0lEQVR42mNgoCLIy8vzys\/Pf15QUNDNQE9QWFioBLT4CxD\/B2GgA5LoZjnQwi0wi6H4TVlZGS89LA5FsxiGK2hqcW5urijQkidAfA+L5S\/S0tJYaWU3I9CCjUC8GYg\/YfM9MBH60yq4G6GW1OEIdhBeT1VLQUEJNLQDavg2IJ6Kx\/IfwJQvQLGlDQ0NbECDsoEGXoEa\/BUYrDpA+gMey0FBH0+RxdnZ2fJAg26gGVwKdEwBPouheCslFgsDDbiDZuC2kpISbiD9lAjLfwILISFyE9YKNMPugwxDSnDE4GSiLQwNDWUGxSfUcjkgPgU15DMQ6xUVFamBEhMJlu8nqowGWtoCLThAmqYlJCRwAAsTdmD0zgTy\/UBsIH2GBItB+C\/IExgWggwHSkQB8V4g\/odF4zmgg1Rh6oGOmESixdiLW6BBlUDBdwQ0\/QCGiC80CnLItBiEr6JYXlxcLAItInFp+AbE7lCHBgDZfyiw\/D8wygwxymho4fENTfFnoLgDksU\/KbEYivtxtURApdVlqKK7QFfqQ4M6HIh\/UcFicD0PSmNYHQBNfMWZmZmCUB8XQFMqqZaAsmQNKFsCPWUFpBciJeYogtkuKyuLB2h3EFDzJhItfgZMoLo42nigqvcgSfU20BGLSLBYCU\/jQx9UJAPVmBBte3l5OT8RWfIrMYbm5OQogqKE1DK+FV8JBsoRxJqFM9HhsVwciL\/jsLyQHi3V+VgsrmGgBwAGrRFyHJNUVVLJATuBli4FYnVKzAEAi4Bewge+mbwAAAAASUVORK5CYII=","width":23}
%---
%[text:image:2825]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:2218]
%   data: {"align":"baseline","height":164,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAALUAAAF0CAYAAABlkHgMAAAY4UlEQVR4Ae2dTZrqOBZEGdWsRz2qGaOa9ag2wFJYCjthKSyFpWTrkASpZxIwWLKvpXB+eubXyFdH4dCV7bf58uIINBaBTWP7491xBL4MtSFoLgKGurkm9Q4ZajPQXAQMdXNN6h0y1GaguQgY6uaa1DtkqM1AcxEw1M01qXfIUJuB5iJgqJtrUu+QoTYDzUXAUDfXpN4hQ20GmouAoW6uSb1DYaA+n89fx+Pxa7fbXcp2u\/1yWUcMNpvNrd1ow6WXEFAfDocLwATnP\/\/5z9d\/\/\/vfr7\/\/\/ttlZTGg7WhDxGhJuBeFGnUG6L\/++usC8P\/+97+vf\/\/912XFMaANESTg3u\/3i4j2YlADND0aoP\/55x+DvGKQfxMi4KZtaeO5l0WgBmi8MzttdW73yETbYklo6zmXRaDmsGSg24U5V27A1kByLrBnh5oBhC1HH0ALbuwlYDN+mmOZFWpsBzvHQEI77HUfgGvweDqdqnM9K9Ty0Qa5D5CH7TyXv54NanooI2FnOvoEGsBlQ2qr9SxQK9tBTx32Xj\/vC\/I51HoWqOmZeGmrdF8A\/yZYc6j1LFDjpa3SBlqQ11br6lAr42GVNtSCmrEVR+5a3ro61Jpo0Q55bbhhgLmKWueGVIVaKs1Zd4bZMOcMwARqXWOps9VrTT1ANMg5yPljDRhrnKJaFWpPthjqHOTh41oWpBrUsh6eEjfYQ5j1vJYFqQY11sMziAZaAP+2rpUFqQa1rmj5bWf8mmEXAwwWS2dBqkHtCReDK3CfrbEgq4DaftpAPwM5f08WpGRqr4pSO5VnqHNwnz0W1AhhqaUK1PbThvoZyMP38NUl89VVoHZ+2lAPwX32vHS+uhrUPivPYD8DOX+PwSI2pNRSBWoOJ550MdQ5uM8ey1eHhVqZD59qaqifgZy\/J6hLDRaLK7UzH4Y5B3bMY90bpNRgsTjUZD6wH2N2xp9xBxADJTMgVaBmNKvKem1wxzBQMgNSHGqmPJ35MMhjQM4\/AzOlpsuLQ+1zPgx0DuvYx6T1YKfEUhxqRrJUcOzO+HPuBDBQMlddBWrnqH9AZWSvQpqToufu0D9x0r32Qip1rxMvAlVHKjwisXhVGCBRUCoattf8vnLVYaGmgj2oECADIUD+Ae82wby\/lmNanx4U3jtcP7dL6813ySHvIY7sY1ioNZvYOtTArMPlBcTtFUzgnfJ3Tt9mG4DONhPkAM5v8ZstAy6oS8wqFvXUgrrVQyhg3WwF0AEfENb6O19\/I8EtwFuNraFOh6u5VetmMQRzLZAfbZcOxG8nwOlYrSk3nZV9s1JXhvsPmwFQh1SW\/julGlCXBAC2ZO7OXev3DHVlmGk4gMbPXgCKAPOwM1GnBDZ1bMGSGOrKUN8GgdsEzjmVqH\/UbZdKgnvtYBvqilDfgD6ERfm+i1HXBPaas06GugLUN\/+8TYCsCWghfvoGmwFtLd9bc7uGujDUfwANHGv9u4JNdqQmgDW2bagLQ32xHCj0ebU4\/3RD9iFZkbWBbagLQn0DGpVr5Y99SWCzbzVUtcY2DXUhqC+zWCj0sRmcf7rlFWxgqQFh6W0a6gJQ3\/LQhwaBFtrsW1LsNYBtqCdCfQN61zDQAjvtIxM0pZW19PYM9USoL+dxbBPQ5w6gZh+TWkdP9RnqCVCj0jRykz5a6jxcH7\/BjmxDDPUEqC+njqLSvf3tYqf5DPWHUOuc3arnQEftLKfYam2oP4T6otJJsbr9S\/seddBoqD+AWkHrUqXVjQOrtdrHFwm8Afct46EG7nWd1DpiJsRQvwEz+dQuMx6POu3x21sTk9K55inbM9RvQn07v+NRQ\/f2+ibeeSGG+k2oux8gDjvtPl56z1C\/AbWtxy+5noAWxFC\/AbWC1cWU+FCRnz1PFiTS5V9qJ2c\/RsDtrMcvSg3s21hZEEM9AmaNxO2nH0AdzFcb6jegvpy8dHjQsM8Oz62\/R0w2cf5vHkM9EurbIPFkqO8icPyGOkq+2lCPhFqB6npq\/NERh46elJoYyaotuVZbeaD4Am4FypmPO53+Rj1BHSUDorYy1C+gvp1q+kiten\/dUL\/+jwvoZZEOaYb6gUKrMxtqQ\/0CEaGynrWhNtSGut7N7u2pX3hpjeJv9uPcHI7TjwbExEq9YqU21Ped4Ao1CikRWHJtpR6p1J58eXKEOn0rtaF+IdbRsh8oD4fYru7xca\/Jv79y\/IZ6SXXOf9tKPVKpCdrl\/23ZP1Gs35u8\/VcPsa4sN9RvQH25lMtQ33fSXayrXwz1G1DfMiD3zdrvK+dv6xHp\/tWG+hOoT7YgtwgQi02ck5mwiYb6Dajtq28o\/xyZgvlpQ\/0m0ATscklXUib\/XSMQzE8b6g+gvvlqW5Cvy7nlwayHof4AaoLm1N5VpfexUnm0jaH+EOpLag8Lcu7YhLDvKQa+l96LWcT87YgzilIC1pfZxUPHUB+\/VTrKdYl52zj78aFadz1gDKzSth8fAi1V6Fat0xGKcUVElTbUE6G+eetTRzbkqtKRZhAlMlrbfkwEu7u7Nu1iZjwEtJV6ItB5ALs4JfU6OEQJc4iiPbZSFwC7CxuyAtuhzmWoC0BNMC82ZNuotwbotG\/so8CJvDbUhaC+gZ08Z1N\/AH310VGzHcMOZqgLQn27jrEVsAH6EDt9NwSa54a6INQEtBmwVwq0oS4MtFRj9WCvGGhDXQnqPxR7mw7hQLKWP+qa6hx5xlDi8Wht+1EZ7EtWZJNAOa4A6+SfmfpfM9BW6opA5ypyy2Pvg4KNOl+Bjjz9ncf02WMr9Uxg33z29gpQBDuSwYw6twC0lXomoKUqgH1T7SXhBuZjKqkOLcGsOFupZwabwAM352MDFGBdDv1zKLeUmd\/cfF+1Ql0EQytrQ70A1ILnD+VOkFUBXKq8+waZjkSHouFVj9bWhnpBqAWT4L5lSnLADwnGUypj\/gCYzx5T2adyBVkZjVY8s+L2aG2oA0CdN44Av3lvAE\/lZlW26TlllxWeb\/4sUmRu6dCixchjNnxsqINBPWwggKQAJ6BTsA\/Dwut8pmVbMYzNo+eGOjjUjxrOrz\/+P2MMtaFubsBoqA21oc5vODN4vBk8n\/Q0+s1sfPh\/fPhfOjZWaiu1lfqJ\/Fqp3UFCdBArtUEMAWJJy2KoDbWhtv2IO0AqqXZr3paV2kptpbZSW6mjq7iV2kptpbZSW6mt1E96wbO3PKPozvNp57H9sP2w\/Xiirp5RdAcJ0UGs1AYxBIifWo3fvmeoDbWhtv3wAO43dYz0mpXaSm2ltlJbqSOp8m91sVJbqa3UVup5lZrbHuh2CNzshvt5\/FZ4j8\/pVgm93esjV2wrdSCl1v09gDO\/Oc023axml25es99\/l8Nh8zUsvMdn8u\/phjaAnjd6648N9cJQC+T8lmNADKTHdPuwc7qV2NfXe4XvnE7f4LMt3eEJyHsA3FAvCDWAARrQAR\/qC4zvQvzq80DOtnPAW4bbUM8MNcosmKXINUB+BLoAl3q3CLehnhFqgEaZBfMn1uIRrO++PoQbEFrx2oZ6BqilzrIZS8I8hJ+6aIDZimob6spQ5+qMrx1CFeU5dZMlWbtqG+qKUAN0RHV+1JGk2likNYNtqCtBzaQJQEdW50dwk06k7msF21BXgHrNQAt0cuTfR5nt6gaQhrow1C0APQR7bYptqAtC3RLQawbbUBeCWoPCNXpoAfxorczIWhTbUBeAWmk7BliPwFj76+SyyYqsYYLGUBeAmpORmCVcO7iv6s8+sq\/RwTbUE6HGR9PYc56\/8Qq+Wu+zj2vIiBjqCVDLR7dsO4YdRDls9j2qYhvqCVBzMn8PtmMINvsc+TwRQ\/0h1FJpJimGjd76c03MAE9EtTbUH0Ldy+DwUQdFrTlSGeqkaWOXyHc97VmlBXlktbZSf6DUvXppAa11VLU21G9CLZVuceZQsI5da6YxmgUx1G9CrYD1kJceA3fEvLXaCAs7dSENUGyJ6qkZIDJlPKbBe\/gMsYg2YDTUbyi1rcd9Z9aAMZIFMdRvQK1g2Xr8wM0lYNEsiNrJ9mME3Myi9TiD+MpGRcuCGOoRMOvQaj\/9o9A56JwPEslXG+o3oOYw61TePdjRUnuGeiTUGiTaT99DrcEiMdJRbcm1oR4JtQJlqO+hJiYcxQz1i4x2tDy1oI50y7Dc1y75OFoG5Ketzi8oe\/02XbjYEg1qXSm+JDyRfztSWs9Qj7QfhvreduSdzFCP0HMr9XOIcqAiPDbUhjpFYF3QvqqvoTbUTUHtgeIIoPlIVPvh7Mf9EUZQM0BbMj+t3\/ZAceRAUYFynvoeauWpDfULxY6m1KgAvpHZs1f+srf3BbUnX1YINfeS87kf952amES6z56Oqgjj1IW9LbZEVGoarqe7MY094nD1S6R77BnqkZ4a+8HplViQsY3dy+eISaQ7NhnqN6DWrKIzID8dO1rmA\/Ex1G9A7cHiD8w6CkXz04b6TaAJGN7RvvoH7mh+2lB\/ALUtyA\/Qsh7EBJiiFNuPDxqDgZFTe98xiJTKU6cy1B9A7SzI5guVjnYVuaH+AOZh0HqeXdR1iaii4hJlbaX+EG4GjL3eAwSVjjhAVKcy1B9CrcD1qNaRVRqw1TaeJv8A7h7VOrKXtlJ\/ALGCprXuBdJT3lqTLVHOyFNb5Gsr9US4lbfu4Txr5aUjneeRw6zHhnoi1ASyBxsi28G+Cp6oa0NdAGoalwkZMgI6J6K1NRaLiZbItkOdzFAXglqBbHGmUT6afRQ4kddqC2c\/CsCtYLaU5hPQ0X103snUDoa6ANQEVgFtAew1Ap23gaEuBDVBVUZkzVZkrUAb6oIgE8y8SLHXlsMmy7FmoA31AMQcyhKPBTbniABL9IyI0nZkOaKdI\/1Oeyjuth+VACcFRm43+jnYqDN1XEva7hnkhroSzMOgkz0AmmiqjTqTX6dua8pwDOObPzfUM0FN0FFtlJCCMi5pSfjtXJ0BIQdjzY8N9YxQCxSptizJnHDzWwxeZTVaUWfFlrWhXgBqNUAON7YE5awxmARk8uayGRwpWoRZcTXUC0KtRgAwXfco3w3gn575J4hR5Bzk7xOvYl35rRiUXBvqAFCrQfHcAJ4ruCBHyYEU2IeF13OA+Y7sBZ1lzek5xeadtaEOBPWw4YAcIKXkKK0GmsM17wGwIKZhh9vr5bmhDgx1LxCW3k9DbaibU3RDbagNdco5PVrIRxVbmLdnsNOzNyx9WO5le1ZqK7WV+okUW6ndQUJ0ECu1QQwBYklrZKgNtaG2\/fjzCpeSCuNtlYmtldpKbaW2UpdRE6tyvThaqa3UVmordT2FsXqXia2V2kptpbZSl1ETq3K9OFqprdRWait1PYWxepeJrZXaSm2ltlKXUROrcr04Wqmt1FZqK3U9hbF6l4mtldpKbaW2UpdRk7GqzG0SUB5ulUDRbRDyte4Vwvt8duy2W\/2clTqYUuteH0CrWwDr5jTbdM0mZTcovLYZFO4LwjYAvlV4H+2XoQ4AtUDOIQbUfSrHVE6pJGpflnP6DOVwLbu03lxL6\/fPywE31AtCDcy6xdg2wQeEx1QAM9FYpLCtQypse5OK4Oa3cxBaemyoF4AaoLAGQLZN5ZAK8KUXqhZ+g9\/idykcGVqE21DPCPVQmQGsNsiPts9vb69wt+a7DfVMUBNoDv2AtCTMQ8ipyyYVVJs6tmBDDHVlqHN13id4zqkMwVr6OXWibsDdgmob6opQAzQKuE2wHFJZGt5Xv3+8gk2d16zYhroS1AAtu3FeAdACnrruUqHua7UjhroC1AJ6vyKYBbXWawbbUBeGGqA3CeY1A712sA11QahbUGgBrbUUm31bi8821IWgFtBAICBaWQtsQ\/3kdL4xb63ppusArSxHKyAP9wOw15IVsVIXUGpyu9vU6KcGVVpwn9O+bVJZQx7bUE+EGpWmsQ8NAy2wj1ewgSayFTHUE6CW7dh1ALTAZl\/JYRvqMSZ68Jk1eOrL1SipkU8dQX1O+8qRKbINsVJ\/qNSyHfuOgJZaH65gE4OIim2oP4Sa86G3HQItsFFrYmCoBxbj2dPI9qNnlRbUkdXaSv2BUiuFpwbudY1aR\/TWhvpNqFFpRv\/7jq2HOjExAOxoFsRQvwm1AnYy1JeLhIGamEQCW22EhZ26pJMeyi1RPXXr0+FS4bHrbYI62oDRUL+h1BogHqzSt5O29ikWqLWVeoSgR1RqKYCtx8+ZiMcr1JEsiNrJ9mOEYjvr8QNzbk9QamZXo6i1oR4BsxoLP71LDZg3qB9\/3z8kUmrPUL8BNam8g6G+69T7qwVR5196bahHQq1BIh7S6vxnDIgJFmRpmPX7hvpNqE+G+q5TC2o6vsBacm2oR0J9C5ShvoP6fFVqYrQkzPrtW1t58uX5\/xDA6J5DbPrH5ZcYEJsoGRBDPVKpDfXzzmyoVzj5YqgN9Qhsn38k2oyioTbUz4kd8a6hfg5RNG9v+7FiqBnpRwNq6foQE6B29uMF2NGU+jaiNtR3nfpkqF\/QfH07GtSeUXx8hBLUnnx5wXY0qEnsc4g9WKnvlJqYRLrBze2o6smX55MvQO1rE39X612COtLNIw31yMkXoNb\/fZgk+06ten7NUL+wHXo7ov1QrvpsqG+dmlhsUomS+UB8rNRvKLV89dFQ36AmFkAdZZBoqN8EmoDZV\/9pvbAekQaJhvoDqLlsCWVK\/3RfzikGxCLSpVyG+gOoCRoNeTTUvpmNBoBj1xEHigBN8QW430cprEe0G9lYqT9UamVBTh2rNfvOEStS1kOi4+zHh2AzOEKpUst2Wdj3aANEQ\/0hzApcz2otlSYGikektZV6Aty9euvIKk3nMtQToFbwjh1ZEPY1qpfW0ULtQrJh6pLMZbklcvZDwWOt80HOHYDNPgJ0xIxH3iaGeoJSK5C92JDotkPtYagLQK0gHhpWa\/aNzsu+Cp6oa7WH7cdEuBXIU4NgH9M+YTuiTYc\/6lRqC0M9EWoCLH\/dEtjnlQFNOxjqAjDnisEheptAaAFsgGZfog8M8\/gb6sJAK7gtgL1WoA11JagJ7JqtyHGFlkOCYqgrQk1wde41mYOvFRTUmbpuUlnLoDCHWY\/tqSuDrQDjTYEmKtzUjTpyktKagbZSVwZaysH1e\/hsFPAQDGxgpk7UDaAjXWuo+L27lpA4pTcD4LIj2wTQMZVE0qKFOlCXFtQ5B99QzwBzHvBctQHqMDPY5\/R7wLxLZZMKA9oW1DmPsaGeGWoFH5CUIRHcAJdIq1LYNh2I3wJm1JnGV31aWoeFmvP9CH7UE9FLQQDcsiWX\/U37fEjllEoKwMflfN0G29qlwrYBmY7UKsxqE13AEc5T9wK1GkJw54AD4jaVfSqHawH238rx+j6f3aWyuRaB3Lo4KI6sBXWJE6GTrJRdaJieGiNvmBxyZU4E6qM1AOcQt67IebzyxxKGEjQWhxqgqWBe4d4fA7sK0Opx73HJ9x9mYKfEUgVqPGBeYT9+fcvh3mMEM2Gh3u12l4FN743k\/X+vI2PXYKfEUlyp9\/t9qJt5G6734FoqXuGhZlC0VHD8u+uAeNhODJYPh0MJof4qrtTH4\/GSmhpW2s\/XCdsc7cbAGSEMDzUVnSMg\/o31dxZBfTqdYio1M0L0ul5z1e5k73cyTZGHhZquZqjfb9ieO0PJHPWFvyJ6P9gIKu1ctcEe21HJfJTKUVeDmrQeo9mxO+XP9d0BSqbzqkHtDEjfkL4jUhoklsp8VIfaGRDD\/Qrw0oPEalBfNuwMiO3XiIs5Sg8Sq0LtwaJV+pVK835pP10VagaLni432M\/AruGnq0KtwWKvJ70\/a0y\/993Za\/jpqlBfNp58tfPVVutHnbiGn64OtS2IgX4ENK\/X8NPVoZYFcWrPcA\/hlp8udb4HMGspfuqpNqw1g0VbEEM9hLqW9YC76lDbghjoIdCoNKdRwEaNpTrUHF581p7BzsGulfVQB6kONT9Ej2RQkO+YH\/cLOiyUPCtPMGs9C9QaMDpn3S\/IErHaKg3Ys0DND3H5u9XaUNdW6Vmhlre2WvcL9hwqPSvUUmtfPNAn1GQ8UOlSN6yBp0fLbPaDCuiiXHKU8lhe9wG58tIlbtX7CGa9PivU\/ChXOJDisw3pA2ZEC5Um21Hy6hYB\/Nt6dqipBIcg25A+oK490RIGaoPdF9A1c9KhoM7BthVpD3Ip9BwDwyHYi9iPvBI6N8SDxzbABmbaknHTEkDD1uJQUwnNOBIIvDZBcVlXDDgTk5SdzvOZa1AIP8MlBNRUilQPgaB348Fc1hUD2o2yJMyCOwzUqpDXjsDUCBjqqRH098NFwFCHaxJXaGoEDPXUCPr74SJgqMM1iSs0NQKGemoE\/f1wETDU4ZrEFZoaAUM9NYL+frgIGOpwTeIKTY2AoZ4aQX8\/XAQMdbgmcYWmRsBQT42gvx8uAoY6XJO4QlMjYKinRtDfDxcBQx2uSVyhqREw1FMj6O+Hi4ChDtckrtDUCBjqqRH098NFwFCHaxJXaGoEDPXUCPr74SJgqMM1iSs0NQL\/BzIeORAe2fRVAAAAAElFTkSuQmCC","width":80}
%---
%[text:image:95da]
%   data: {"align":"baseline","height":131,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUsAAAEzCAIAAAA3pLZlAABFU0lEQVR42u2diX8VVZr3+YtmfO0e7Zlx7FFE0AFs7Z7WzquvitIudLeOdtMj2iquLdpqK7b3Zt8TEiAhISsJJGQlC5CELGQlhGyQkJ2QhHzy\/i4Pfbq8t6puLae2e099nk8+ISS36tat73n252zaEIc4xBG5xyZxC8QhDkG4OMTB8xhbmmi91pbdlxfflb63Yf+rp\/cy+arNhx\/if\/E74kYJwsXh9mNhdRG4Hh8uZzD\/69FHNMrjpc8C+N7ZAXEbBeHicMUBmKvH6gHzhy1\/AcxbCn+hnWcVeaZyD9YIcXsF4eKw74BqBc+AGWoWMEPfcoFZXaVj+RB3XhAuDgvdZntgVhFcgHDRBeHi4OM2wzx2EGYlgfEvlLkgXBy63WYXwqwisCnEJygIF4e828wrBuasYGESn6wgXLjNz0YAzEqCBUt84oLwqHCbAbP9bvNPjjxyT\/bWf8l8+MepD\/2fhAfvin\/wn3z\/KRX85O7kzfgF\/KZF1yASaYLwSHOb9ZaO8BLAfE9WAOa7kzaD5yCY1eWf\/Q\/gDy3iXFTFCMK96jbzLR3RLvfmbLsDc3IAZvCpi2cluSvuAbyyFalymDPisRGEu9pttq10JBjm3G1QzoD5Rym3Le04PjCrKHOckfu7gF0jniVBuHCbA5b2j9O3KLnN9gjOK\/JngvBIcJuNdVxwdJspBmbAbbZacGFWvGXcc\/HgCcItcZut6Lhw3G22TrDoWFTuJhxyQTgHt9nOjgsZmG10m60T6wrXxVMqCNfhNrPSEfvd5jsxMKfdZosEb02UwQjCo8VtlpaOuNBt9hbhENGaEtWEWzSowEjpiEfcZs8Rjs9UNJlGEeHkOQu32aOE30nypT5EgsVRS0YdXpUgfFPEgw0tbZuKjmy3mbtooRS\/AzNHKakeNuUmms8ilnB41JYGxoLcZgGzgcq2sDcZ91ZLGay6LRDlfSkRSHjv7AD3OFmQ2yz4tDofjgVU132GB6TikEdzX0qkEQ5nm2+RdnTGwKTyYtaujwrf\/7L0s7TTiSWtRST45768vTuSdlpU02bAJsLiq9S4BmsuastgIodwfIRmVDdUNB4REQYjuT9+KwA+3JAzcmVUXfA7xjhXaSPF2mrssrEiC4c8MgkfW5ow5nVDXQNsoailGhu6Wsrw+PjEzOzs0tLSzZWVoNu+traGn49dHcdyoFffqiy1pox\/5VeOzr6USCAcXpaBaDmsRKGxg9iG+S0Fe2FhEQzTTV5fXwfhy8vLc3PzEHy\/sroqRf2bU3\/REUVXaBGHYjf\/ofw4fYsYFBE5hMM416u9BdtBEpP2lJTtq9emmLoG0tPXr4N2WRN9dGwM6p2tAhktSSZtaS3BczOZ9igcFOF5wnX53vjgPZfWgksM7UpixYt\/WfpZKNuAFmAD4LB+OHEOW50+jvdK3jETY+PlLuF1lPz8aOtL8Tbh2iPn+LyVCidcqFE\/Knz\/cENOS3dzKE74Ifxk\/A6XE7FTQEsT2\/gKzrWAHSQE+cLNufsTtqqnr1VsK463UcVSwGMjCPeG+609Tu7+WNqOpJ1Qp0FUAzzwRq4vEzKbsQRAAxs+HRYRdha8JultY2wzTU6e+RcnPzXmJHN3nWDzi0ERHiZco31uOPViZ4grKC91bWoaKpH5t7IH\/vfiSKcByPEnLFo+MXmVsATkhtmWrkd4qabLDQaMZzhQlpS+Zz0c5YMivEr48eFyLbUrLve6g8LX4A1gr6+vU+yaAtfQq0y14hvALw1xzy5dfzozRhfe1e1V9GqwBXAWEI7zmscbcrG3jwx1A5VnFlUKqkx9jJK+FK8SHrZF7N6cbW62zKWKVBriAnIAWAtyM7OztBYsrizsTHlML9533OaFRS5skzSeaaZPR2+rCX7uyNTHaBgU4UnC4USFzYe5WXW\/lvubnsEepreJbehSKFVdROFvCfKmy\/Xa8YbDTGfUe7qwUlJ6QoVwlVoUq4OgKqeO+EERniRc3QN3M97AjLncIA0q1GSIC5DTPXkz\/zWNeGMpwbrAyzKXSkZWDq5kdHZYV44anrkN1pZSii7i+1K8R\/jY0oRH8Y5Je4oZyXCn128fMLZNcnV9Zga35WRfucqpydu3FO8zTS2Z2bm4kgsj7bpMZV5VLuEd8pxtUdiX4j3CP2z5C3e8dyTthOX8ZelnULCsfYo6qPBzM0mpUMucqe7l5WWNJSXq0tcfUEEjCpoTQjUtluINyS8oqjxZhStJPZ2oq8rFtvpCrDJKkfwI7kvxGOFYazl2LECp+ioPyhaWSAVk4tfMcL4vby\/LJxFmHH3gjgtdKt7vi1m76Nfge1uHd1v7haSUdLqSDw+\/51SVixmHPFIHRXiMcKUiNl2Rc2qNDAIbZjM1VFDsSnqAyaWlpYvDPcYqyRjeFBjjmJ0iqalruDp9VZZwvFN6m2Q14D1agTckO+dIYnLa\/PwCTvSbhFe1V57Yn85UKrmJVIfcY4TL9pBpb0iiMmwWxyawYS1LYQbkrHoM\/yUtO1m6cePFQ7uM4c2Sz1wsc6kUHC+hUhMl+xzvkVdNi6ycqqqJS0iuqq7FWWpq6x+P\/ZmzVS6GO9sisi\/FS4QrVbncnbRZI2yMbWCGJ57oxVdoHpVoNvjBL5NuX1lb0V5hwixk4B1YIJaWuNPV2zeQkpaJFx+41hu6nOH94uKp8dMivDu7eoA35MpoIAmXkZXzI99mrUmyJGc6BaAPlBadyNvA1EuEy3aJwujSFcQmtglXIKfdYCYX+nbN1ryWCpMdSTtpQbEOb0j16drcI\/mBGoGBJlkFTn6HUvunSRkcGk7PPAS8ocZxDY1nmr9N\/s4NVS5m+lIibFCEZwiXrXLRkkqVdkeSqYwDkBt46LE6kNrXUmFCawpMA+vwBmBpGdmna+pwivSqlKALgAdutX1+KPco8IYRAQ8c7xSu+LNxz2oct+h4v4BKdCCSHHLPEA7zSW8tFMxUVvXNuiMBmxmFRsTiUFfjtKyw0Jp1DjCgAue4nk8zPw4yW\/ALa7cPi85eWFT6vT8+Nj6prf0CLqDgeElCUurdvgfdU+VieFBEJPWleINw2SoX9TgNHnHmdVMJN0gz0x3JZHEx8Nmr9EjCPmf5ZwDGPbT2dw+8PyklHTocFzN0afi5HypPLDHkHXAvTZXiDTlWWISzAHIo89fjfqe1ykWDb6UuT2fGfF\/zV5IDFZ\/oar+JqkER3iBctspFpRtJWl5CoXKOLRY9F3vxgv76g+oFZNTaYVH+GXIk7xigam09h7OUlJ7Y6n9Ueg2HG3Io8W4p3lhfaGIEruS7xO\/v8j1gQ5XLu8VvX75+KfQhwQ\/xXxz7UiJjUIQHCIe9FJokuzdnm5b8Mz3lXFQ3k4bGpg3lKlGKn9uToIIDDMCwikGZ\/\/MP6arprN7g3TpGnj98b8IbDgK1xOEycDE\/9\/9c45Ymhqtc7k\/Y2jXRwR6MS2ND3b09\/UODswszq7fuJDV7Jrr06nOVntYI6EvxAOGyVS5KHnhoeQn3MHLZicqA29lxWPYC0k4nAjlL3e+29g5KUJEDXFRStj9xf9Bl9I4Gysv4Lm2dXd0ZWTlBeAN4uOJvx72tPY5lrBUcePdfvbhxe87UmaaWo\/mFuA9XRseYXJ+ZgVdEz8wXFZ\/yGhTh9Q1MPUB4aCu4UqJFmn+mJDB3H\/jsuTYiXNZKvz9+KxuKxJcuKWbxiSmAClY6OcCAbbt\/R9CVTC9cw\/\/ytVxwXsIb0tV9kfDG93+L8wfZ5yobHhircvlp4rYrUyN0V+EawE2Qsi2V2dk5emwyG1PFoAgPEC5b5SLbjcRCa5bmn48Xl0GB4PXfL\/mTrP9PCtyiChPCmyLYeNbn5xdgIX+X9H3olZCu42WZQ2EytqXaG\/\/8Jvbbe3ybLW0Fx\/LR2t1EeOPsKniTsLb5091VXPpSPD0owu2Eh7aCyyZaWP8z9UtbhHdv3wA83t6+fpzi6dQY2SSZdQqc4U0qlBJUsNVDFTgMWl6En66pk6ruILwhm33brJ7l8tXxzymogbPjvOp4B0Fe0JoX5X0priZctspFNk7jqzxoQ\/65pPQECMfzvbCweJ\/\/YdkoukUXIMWbmjTr6huB98fxH4Vexku5u\/ELJjvPz7e1w0BgbENAFxXtM7y3+7ZbveHBA\/HbcDF4O\/kFRbgDWGS1EE6QU0ny\/sJ3o3lQhKsJl02ShSZayP2mgjMrWjtYgySesIrKAF1Nza2b\/TLqqLnvjHm01H1gPOg4BXQ4DHUQfq9vs2yuGL8zOn0Z64Kx0zGGmdTUNTA7mYxzWby5V7lkFWXT+w0sbaeqNeLNYm+UUNDeFBh5gyLcS7j2KhdqkFxeXrau\/5kaJEEUFZBlHZIPpF+Zusw9B15aVhGkRfFDfO+PSwxKUAX54ThS07NgZms3E3CuIL1NSW\/SotDq9BNZ39uKVvDHEh7rHxjEqXENWOOGLg3rIhxC1RCtvc1c+lK8OCjCvYR\/1ebTkmih9BjUpnX1Wyz\/DLBxlou9fb7UWNmH4+r8JMcItjQ7xfBmWnRv3B9UHtPuiUAi7UxTC34T0IJzWX3e29ff3HJWFmwSvAJZ5rAd6Ccfxn4QVJpqXZXLX9K\/wLsA5DhvaXmFXrwh4xOTFPj8svQzHQ55UuRsYOpSwuWrXOTiNFDg1CCJ1doivFtbz1H+eXDoEp6VnMN5L8f+Wklz8opgw9mWhriKS8qleAMz9Wf0i5Of4mJWVm7S7zMByVgplHiWCi6AooZQ3exFdvmeD02MaWoF1z+B527\/gxRxwHvHqTu7egwQDpmfXwgsuxMjuqb0RMwGpi4lHCullkQLeeBkn1vUIAnVh+cbeBccL8GFtbSeS0pJ\/5GCjYpfuHHjhskzhoa4yAcmX5TwVsGMhdNHZ4elnrN2YWzjYmAeM8tcNmxuXZXLU0lPUsqAFiZjeEPGxsZJAehS4xEzKMKlhIdWuUA5yIbQqdnLovpQGLGkSFmDJFD\/JPFjFe\/3yoQptoNCXICTnnLmA2vBWxpvo5vDbGwVwalxFurAo8mK7L\/UVXf4JFmOkSTZ+ynv4crJRA+bA9eixgdHBnWpcRWTxEODItxIePVYvcZES3V7FU04sCJ+Pjg0zNzg7p4AZtTs8VP\/VvX41tH8QvytrhM1NDZJXW6GHCWfyUyF7It9SyPeDPLllTszqvBScKrBLVPL+Ab\/hIFABWrkYuB76SqDM6p43ZZueIDVjYUScH\/MEA41TkH1fXl7o20DUzcSLrvhgWyiheaTWVHfopR\/fjPuDZUHYuS2YQwgofPxUIYFu7nlLLST1N9mqpsq56hIk374qv8VA5w8FP9IXVM9Aax0QFUCbLaOsNPd599i3qaVNb7Cyk\/itlBekEyJoBJ0A0I7PZ5ur\/onfoMiPLGBqesIl90zWCnRQiNEuWfIpHiz\/DM1SKortGPtuWTi0t\/iRaDPsUCAdhjA4BnfQ0B1qMYOcoOpv4L5wErJZ03a1fcgVDHeiKywFYTkQOznMf4YjXrboiqXQCF6wlZaWCmIYBJvyNT0ND0qO5J2RtUGpq4jXL7KRWHmrhUzTEBjaIIK38vWhwbJzpTH6F3A9NUV3GKrCWWepSEuON5KyWddAoX8hv91LBah58UP8V9P+J4wfCIlBpSMr7DyXMqzZMXQFZonHIJXg0P+0fH9HDcwdf+gCHcRrmuWC+HE0UQParEIyj+\/Hf+WlqchoyWJ3gvTwGEFry8NX0tDXFCn\/HcF8D0I2plwGV3KvRX8+dQA4bgn9EFwIXx5eRkfaElrUVRtYOouwuVbwRVm7r6Z\/xrHKHpQjioI77D5Z6nkt+Ww4BbQVQIbWhr\/SzVbVNchZVt7iMtxUUkdG57lsiv9ORBO\/g4vwqmxFN8YuySPDopwEeHaq1xI\/PUHudSx9fb1S1U3ecJBeOuKYEMOnvxaGtyiFQSPLAQuPQ05ZlEu\/FDqDINtLqrVHrFow4MXMp7nTjglVvF1d9YuY1el0pfi2kERLiJcthVcJdFChJspdIFZHlQ6RnWaestL5J\/RhF3wxqGZQ+PYeMjw+vjfoCjXq\/5XuLjcdoqKZjM2y8U6wskVhyY34Ip7ty\/FRYTLVrmoxGmI8Lb2Dl3JZ6a3Q9mGxqZAF4uTGcabBbegkMP64W\/4X9\/u227mRA6KRRseWET46ura\/PyCr\/Jg9Gxg6hbCZVvB1RMt75W8E3CrpkbgP8MG1sh2c8vZIJtcWvgNYc4wwONCHdzpJ3xPQD+DdiYx\/hj80EPWuD1VLlYTTh+xsWCbRwdFuIVw2SoX9TgNS02RrYvnoKGxCco51BQH\/9DYsmBTxIvCXfgqbbHwNHvO7ihgfsODXWn\/yJaZKUoPLV81T7i3BkW4gnDZJJmWREvz5XpphYleYaVjc3PzrKJLS4uFECuqXKTyROrjVPHCMR9OhK+vrxsOp2up4XObQ+4KwvVueBA0rkgaGNMo0NvUZUGlY0x187LMo0Es2vDgzvCm1EepmpCK5A3MflBpQeFCuFc2MHWecCx4ZhItvrpvWUYqKDStVFtC4bQgtg\/Efi5Ut7NVLj\/IsSc8RJ0nZFuZr0vnTrhXBkU4T7iuDQ9k5fPKP0szzzV1DazcmtqnQDU0NttUkApRGNswy2P8MUJ18+rHUCox1ruCfJfwN1acX1Nbz4VwmtzGi3BPbGDqPOG6qlxUihypj1rlIPilep66LATbLqlyCZKPMj6gWKn5\/nCLdLgnNjB1mHDZKhdjO0vf598CYqnhmarHSKCuQ+cfwN8WNrklSbIkbhU7lDCDGucYTreCcJdvYOow4c9U7uGbaNnu2w56ZZ3wfbFv7fI9D7CF0nZnlUvwkp22Tdoirn1SethYemtPi21pBccHRThJuHyVSzqfIhBgTL1TXunf8IwCT7KqyiUUG3LFaYIVF1fcTHuZ4epdZwdFOEn43ob9ViRahHi0yiVU\/pD1Zlf3ReohzcjK4VXTll6TZMmdceUGpo4RLt8KnvWwQMjVSTLlNmlextcPJsZmPVpcUs7RUN+4PQRC79BVT29g6hjhhqtchERqlYusR\/B18tc0H9LArkayO5ldn5kx3D3qxQ1MnSFcvhU8RwS33Z4ks7TKRVaezP0l\/PANExsbBU2AGJ+YdCrR4MigCGcIN1\/lIsRVVS7WGV84aVxu\/IbRzQmDWkdxHG7MccrScaQvxRnCQ1vB+SZahFghNlS5yBa3PXX4l1TOZEaNQ3Vv3J7qp3dkutcHRThAuGyVi\/luJCEebQXXohK\/yfuKNREa26LQ2O5lETAowgHCQ1vBrUi0CPFilYuSSnzg8Hbq86XxO3obUWjrMpjoFkXR9RYO2Dkowm7CZatcrIvTCLG6ZstYibEBb\/zZnGdojyfaO1WXrU47Z4xfG7dHgWuZQmubQ2434fIbHogqF1HlomHiwhdFf6a238TkNO2jnShJBgX+Wu5vHLB9nN7A1FbCdW14ICRKWsF1TVxIq0na+PuWyVoazmCfg238SeWFcqfunrODImwl\/Ks2n6hyEVUuJj3bygtlpMmhxo\/mF6qY68B7dTWA98WxLnf6ODYMirCPcL0bHghxeyu4EyXGFNI\/duHOrjJnmloys3NlA29T09Pr6+sBhT83cX+Cw3aigxuY2kc4litR5WKD7Eja+WLWLpKYtKe8WOWiBfIvGj5ZXFnY+Pue5zV1DW3tF8jrvj4zw3ah6JnochxvZwdF2Ee47IYHAkgO7RnxW\/fl7U07nVjdXiU7Ih4\/\/6jwfWNhZMUkmaMlxlhccGExxb86N9ak8shltCS5yhpyZANTmwivHqsXVS7cBWAfbsgJ4vnqtamZ2dm5uXmpXJua7h\/u1xtMdrDKRQsweH6gJF4ue\/FIZ2bvVBd72PD9ofNpj6X9zEOdedb1pdhEuOyGB6LKxbDS\/rL0s4tDFxnVME2B8crqqvqnsLy8\/H3Vt+YzPe6JnuARwlrzL5kPwwYOSNbDP0p5yM3JV\/s3MLWD8N7ZAVHlYgXbo2NjUNeUDSKPlNQ11LhUpU9fvw622cdx7PxhkxFgYXx5aFCEHYSLKhcuAhu7pbuZsQ2YKVYMesEwfqK+Ydv4+ATjPO\/8IcMPojC+LO1L8R7hosqFi+ouaS0KYhvHwsKi3s2V8bf0ubyZ\/5r7q1wieFSObX0plhMu3wqeJJJkOlQ3M8thcZNNDlDDKm0lIU1++folYwXVwviyulePb1+KtYRHT5ULZaG5Nzb4Kg8y1U1k4qtevR1qrtOn83RmjO4qF2F8eW1QhLWEy7aCR0CVS0zaU1+WfgbLuWewJxQh\/Nxw\/llqmbNM2NVrU2SWQ4ebYTsI8gMVn+iN94oSY3v6UjgOirCWcNkqF+\/GaQB22unEIKpBCwiUJp9nZmfxE\/ya4WYm4M3KV8hzhuo2bJaHysXePrzm9zV\/dVsreBR29VjtkFtIeCRVuezL2yutGANslIKiaLbSsbS0pCv\/HIo3XoG8bl5sk5RXnFQi3M1VLpHpkFu8gamFhMtWuXguTgO2WY6KYl0s57S2tgYCSWNLBT+R5p+LLxQYwBuLyMrqKlYQLCV88W7v6Cw7UalEuEoruKDRi4MirCJcNknmrUQLbHKWo4KANIpj4ysYDhvukuaf89u0zvcMwnti8ipfvCGl5RU0n\/jd4rdFlYvLZ2yYHxRhFeHyVS7xnonTfFn6WSjbIFZaLqZF8Ld0Qz5XCGtJBU6+1XgPDg2nZWT39vXLxtLd0wouunR59aVYQjhWHe8mWqC6mRsMxqgPEV8N56hoSNjCzbmweW\/6fevwDvSZna5NSknHJUFElYurxKINTC0hnPuGB6Duo8L3oeKkZnMgJjx0ET\/xVR403wjNvG4WKqcgNnjTq7eDBDp5dW1VvYwM7jeVtVBozeQZVRR4Slombdnb2dWtvRXcQ8aXtx1yCwZFWEI4ryoXcAt6pYEulh8OElB0uCHHZAqalZdAXVOfFq8gNi4Pr+avP6h0akp9w73Hr+GrFXhTCD0+MaXjQqDRsrCoVFS58JKXcnennUloHKqZW565fP0SvsE\/lQqKDPelGHPI+RMuW+Wid+YudKlUXYOQa1PT0G8qDZL4r\/Fr44aVOfnAFC2n2doc7eTWs+dxhSf75IcBvpi1izwCcvUtwrut\/UJcQjJ0ODwO3E9\/apzWJJkoMVYWYNw4VKv0TAJ1wM9rUISxvhT+hJuscgnKTkE\/k+GKA+BRg6Q0QYV\/4hdYXhr28EtHXjSMN2lRvuUlkJraQOtv8+UG2bPTWrZye1stvueV2udwv0F4S+u5QAKvpPz3CW+KKheT8l7JOws35+jBGxy61Nxytr2j88ro2PWZGekzGV\/3NwcHRXAmXHbDA407S6tkpxYWFsNqVPw+u6d\/LH7TAN4WlZf09g1Q\/rmg47BsQTvz+XkVpYZK1qHDwBtfsUTiWQTt\/+7boqXoQlS5KMkHZe\/Rw4bbm5aRjUU8dNLr\/PwCPZMdI226xsVx3MCUM+F7G\/YbSLTAf2Y+sJRtPI66HnrKM1Hg+rGMxw3gzb28BFLfcKa0vELJD8cbx2WTeWIR3nC5\/XGJIBxs4yzg\/POkAxqrXEQruKzsOvTcyspNGvYan5jS2dWjsiMiTXSeW5rTFSfi1ZfCk3BjVS5Q3cwsN5+dAi20OhR352nxCKzGm\/TnufOBCpM\/FbwlW+JCZzfZMaaC9\/f+eMipqhqcpa6+Eaj\/3P+EFptQo\/EVbfKTuC2T1wJBk\/Nt7Vo2UYMyp4944rqObZV4bWDKk3DZKhf1bqSPCt8PGk5gPjtFRSZQ4+q2A1YWG\/CGYwaTeOjSME7xaMKO0MuwVIEzvA\/lHiX7HHh\/kfAXUeViRorrA+nG\/oFBXfuZk+rqG72oHXKVxVd7Xwo3wuVbwVVn7jILGaqbyjx4+cCLNwIr3G8KXwlbH0rLgXUJKqCVkRUY339p+PJP\/VtDo+gU27PCA2d4JyanUUgyJS0ThN\/n3yKqXAzLy2m7wSrtnYb7qWv\/UzLXy9tKuWTINQ6K4Ea4rioX6VgiipCBcI7ZqYHBIVzSxyffVy9KpQQVdLhFeNfUNYCo0zV1OEttXcN9\/mBmXjnya1rauEfOsawQ3hDasjPncB4uZk\/sqxofINEKLqNUfQ+UVZ0g9xs3tqGxSdcmx3je8FmD84+O7zefPNPokG+yLkmmlGiRdkdSRScY45glwvMN1wgvm9TqU7qAnsEe8tgBmEUJqt6+fkpQzc8vQFLTs0Kv5N3yfdxz4J1d3dAtDO+u7os4BUwJfP9x\/Ed4Rn\/gUlpW5bIz5bF3i9\/+vuavkAMVn+hNC7tTnkv+f7Rc6lXgTGZnA9m18WvjO5J2mo+ra+lL4UO4bJWLbDdSaPMzdwf43Pl26p1S0uGkwKnxy6Lyb0h2zhHgTfEtqPEvU74KXZ7fO72Pb36u8mQVY5vhTT88GOuTZsisawUHzI1DNaEPydzyDGh3yR5DxiQ2J54F2ELTYxpl7fZxuDFH+3mV1LiWDUz5EP5M5R6NiRYqz4TaxEJoRfOztDvyd8dfVVLgWImtSH0zKSopA95MgUOZ\/8z\/s9DW\/9Tzcbyq0KG6pZY5+d64yYx5qfttXZVLflsOeyrGp8Z7Bnr6Bwavz82s3bpTjDi\/PKc+5tW1siXuEbhdzCDq7RswRjg9e9dnZnZn7TKvxsMOithkUZWLbJyGJb2t7o4cGxvHhT2Q+qhShozWUYvwhnvmi01gBWQFx0tAeJB5TD4wF8LxlllQjQR3gPCmZxGy3bddeyeT3hJjJi2XG+mRgO1w+OixIDeVLol+oaijwHsxtuRfY7WCVsD9xGJqDG8WV8fjV9JaZL63NOygiE0WJclCEy2sO\/JObtDK7kisILAOlHo8KH5uUXoMjzVBdSTvGM7S3XMRqP8p8W3ZyR5EOH7HMNtQ0fGJKVK8i0vK8QABJxW8rahyqe6poEKG\/IIiAKC0rTfb9LdjpM1bhP85+VPa5xS3FHaiGcKhwHEHcCu0e+MqSU31HvJNVlS5hO4szbojKbRmEV144lPTs\/7eHdkjr2e6m61T4AxvMpJhn6ekZX6X+P3dvgdlGSPCzzS14A\/12uRBeptOSu4JVA2+x0++if12s2+bDRseZNdlEN6UHVTCOyhvdPnaMPf509YJLCNcMwx13FhYZ2YIJ28cqg5WrfncuHryzCzhX7X5tCRaKPVNytM677e84mRCUioNEj2SJ28HXpuatigBzvCGgDE87lDjUOAx\/hilVOfnDZ\/gYq5MjeBPjuYXgtuwYJeWVUhD5UywruHG4qT0CBLe9\/g261UIBqpcYlJ\/ReY38Ma1qeMdBHnP5U5P4I2ViDQHvuLeqpSpahRSdVB7XOJtFFfnT7jGDQ9YdyTMM9u6I2FTyd4mi0pEpRr1TgT7VDWu5+P4j5Q+MLi7jxY8fmeQ2+3nBoLrx0vB9sZ6cbqmDt9AQDUzuUMFuoXOSC0Q9MN9sW+Fev5hFXio8RU+COR\/sKPnAksRhy3hlEIOPYZHoqA1z\/2Eb038Lwqz0e01iTflxslQ1z5yW2Vgo0pTiinCs\/vytCRaWHckPk7ruiPTMw\/9sDvyDdnbRNU1fE8txY+egzsR7IS4e32bVWZl43aV9R4j+5bsal3C2JbGzCFKVoO6B26syuWPGX8gu4xqYw085boqQJyS51OfxRJGhMcnppgn3IChrhIcVcmcbeJb5RI6c5fKv63ujjxWWBTUHSmL1tOZMXyL2JpbzkoDXYQ35UshP\/M\/FjZ8AjVOPcbS2FhYgc5nbOPJY6sDVPc9vs3GpnMbSJJBgUtXNO0KnMn8\/ILeChAHCcdnZGAhUxI8h4D8dHuV9stQJxwSuj\/xJqurXOzvjszOORLUHcnkzfzXeAUCoLrhOYeWlzA3+AnfExq3vHi57MWllUWWZ1LiHBjDNsHyQcslvkrZPhD7uWzMXHvSxUCS7OXkX1MOzEwCCTocj8eJ82WubhdNfw53G587R8Ipog5vRXu4UcX+Uoq3GSdcdsOD0ERLS3ezpd2RcFZx032xCTRlgbojt\/t3yN4gf\/1BLoTjpFLVDcyk1WOQV\/2vaI+RgrqYopiB0f5\/lH\/dvkLAjKcKX6W7AlPCBqizs38T+y3MciWvW\/vzYSDGlpydYr7GiypAoMy1V4DYLy9kPM+d8PGJSbLdtL9xlT4CJUPdIOG9swNaEi0wvWgIoUUBNha+hkeKRx93LbQ7MpRwqF8zZwwKZePzJj3GqNOON9PkYO\/fjj6aUBhPPAfXe94GHk8YC8iRfBj7QVi9rfHhMGCi\/0fcw1xqvAxUgEQG4RBa2r4s\/cz8FkhKEfVNlla5vJi1i5SPFeOBS8sqgio0qTtys1\/xYf3i5KcBndNzTm\/+ubevH\/o5NE2FHwaVl6hHudSV+b+kbsGT9F3i9+pOOMDe5Xte3d\/W+2QYSIM\/l\/IsrAmTJrrhQs7IIBx3DxZuek2SdmUQ1hXnQLh8lYtcNxIIt6K8JKhOk5LPuUfygfebcW+oN0UEIm0rS5R\/BrdhwcZaEORvM6sB5yUblTnD2jWqutzn34KV4g3\/6\/ti34LgG\/wTgp9rscZlHQH1x8JAq8kHqe+DTBqEgI\/DfGAZhp72Z91mefE24cZSBiqCt4xHV5fxEpbwoMnqRgiXbwWXm7n73vG3uTdggzppiwVzgOGKwz4PCwAFrpnDjJeCLQCMASoJZaHxyMoWlpDJgA+bpr4yy\/xA7Oe6lKp9Lc0a8DaWJ\/su4W8sDW7YCQ9uq5yYdGeVmzRbxiUfzlIJq6v6wulKo524Ea6xyoUktSGBb41qUHYqqDvyXg2M+Wq\/ZfWVevPPZJaT3yGNY0PHGlCt7sEbYmAWAm4glR4Yy5PJhp3A+b68vS68kw+kPko1bfShcyQ8UNQ4OmZ+D0OlupdNXJJkSjZe2pkEXk64UnaKaWONFvL9CVtHZ4f1Qg6bnPQ2JbRY6ZhS4be38Dawc\/BPEzhXcVLaDFarrsZp2+Q\/kx\/h\/n4NEp71sPqnGbTJ2SYuVS5K3Ug0CcA84aHZKfxQWsilywF+OjNm4eY8yz8zXEMFS0BNXQPFgUJ\/WWOOyuV4G5vowgjnqNPocddVqm3ntoF4m0yjmO88YZ12egkPmzALSonrIxwGgK6dpYnwyyNX+GanqMVCvTsy7Iyh\/pFeaTqqf2AQWpoEJNMKQv8LwsG5tKr0Vf8rsu1iLhGYVNrxNkb4AymP4Fnn65fSSoqvvPaZ5CjQYQfSDuDaKPmvfcSq\/YSb8sNlq1xUKiWI8KrqWr0paPw+9HZorIsSsLjRTJcaDl9D\/SYeSwDMrJhEeuAU+C88xFKlTbUlbmZbS38CF8ItijyRK+7OMvU\/ZL6BR4Jv4aoBK91Cwg1sePB9zV8Dvf49F2Bja0lBA+zmlrOhnc\/kCVMpCKv65uIDg1i8Dr0+zM6gkhJ2Iiht1\/rbQZUzevE2tvOBRYTrzQ\/bKb\/I+DmZLdwdE76EB5WmbzJb5aK6szTVgd9YuUE3BTo5KDVFgp+oNEhKs1OMwA9jP+CYnQK9QJ2Sz0zwExgI7syByda06LLMNfpZSvJE6uPFJeXcCQfeevPDtsk9KVtoCIThNhtZwvU2n6gTvqXwFwYrXhZWF41ZdyMzl9gGEbyyU7t8z7s2xOWM6g4XX+VOOMsecc8Pr6+v69JpdgYv4YrjaeQyyInZLHpXNHXCQ8c5bTJV5aKhEIrUOAWidXU+UwlRUAT7QOzn7reW7Qz\/4PM2rLpNRtqIcLK8tMx10d5u5U7CIc9k\/1+ak2V4XrpsglB7i3jYgW2hc1e1Eq69yiVUDlR8wsJX0qYoWbChtKka1FvZKUcC5upjfSwl\/F8THqaKF\/KbuJisLJw+NubSdvGfpN9517wMdeo80VXkox5qCR26uslwlYuuduIPit9lySfqf4SKxm3C81FT14DvaU6tR7NTNutt3HlebBsm3KL8MEuYubMFBYb63qw3cXkUUT+aX2j+zU5NT+vKDqoQ\/kzlHoMzXnRVuSjJkwn\/La0eCTqAPSDHLwRlp+ByC7YZVLDQzNvkMq2jOdsMLDRfJ39NUyg45oddTnhgX4RDOyiiTsaLmZ5ZGsZ4vvecPutJ59YI4QnXvuFB+OXHt3lf7Fs0hEgqoSPK3vC\/vt23Xdjkd8U9cHfSZtxtvkrbfF065MP0DyjHaV6beYhwOEcfZXxAHfsmm+rW1tbgh+tKDap0j8KPlt3DLDzhexv2a+wk0845NDNQPxD7OUt9sR7J0M13oopnKOofpz704\/QtMMasplp9OI\/GlmnqD+cSdvIE4YEa9dztpMbJQzFWo07vdHZ2Ttc7Venz\/6rNZ2SasmyVi7ElX0iQlQuY4VGD5wDMOfbBzKt7lCXMzM948RbhUOO\/O7SHSqdhfhqrb6PRZh0D7bwKFkNnMGoiXLbKxfzWs1HoQuOxCMCc9bCxsjOrxcAYRugTCrbR8Em9m2mrED4+MenyD\/QnOduyi7NZoYfe9ngaI40FQm+rrJImAKdGdjWSbQU3VuQYXTAnBWCG8wyYrQiMWSEGAiswQ\/6UuQ\/uKAWWzY95MVbF6dSn\/MCRHbQVBC1wumx1yis1XqzXe8M11qJrJVy2ysVYCVRkus3xDzrlNvMPpxvaUfiX2b+gXqC0jGwu+wQsLCyur6\/rquJ0sMPnhbznyOig\/SE1Qk7TbG4s39DbQqe0x7DKtoRhCA9NkkUt4RQDc4\/bbIUYmKaMu5GcncrRUKcqTncOgZC1mf9Y+gYpZI2QU9EeVrE\/l3xk4HS69iQMQ7hslUs0EE4xMJe7zVaIgWGMWBT2Zr3JdtU231MZ8A0XFt2\/ydE\/SXaYeK1sD9Yl6noE5CqFboQ3jszGVAMGo64NCcMT\/kzlnmgg3BNuMxZvXJvVjoCBbQkh\/5b9iDR1ZCaizmYqu3AChPosnZfLdi+tLNEoERrjGXQfxicml5eXiawTXcUGTqRUjh40s0kr4bJVLl6PpQe5zS6EGQDjwnB5uEhcqkpnLnsvHIthDExro4g6VYCQGjcTb6Mar8GRQc95cFiCY4p\/dW6s6U6B5upyU09jR297\/5Xe4cnBmcVpRtb3NX81dgpdVS7hCZdNkpkskHDSbXZfDAw44cLAJ64QkBhIRweXviVvNtlDasxQ51UBwmq8dDVauajJ73am+vOGT0bnRmSZahlpfCl3t8GonkLHqEqSTI1wpSoX84+CDW6zO2NgARs76zbMyQGYrVsf8cpmUDdmqHOpAKGJZbOzcx4y0UMNK7KlXy57MfV8XM2lk9Dq+JrU6ns252mT3r6uKpcwhH\/V5tOighxR40Fus2t9ZlwhLIiApR33gFNWjLHWcWMXzCpAaAqAgQ0SKCJ9qqMyMiK1AWfwtnVm\/gFQSpLJ7hauiXDZKhfZR9lSyCPJbfbQiAhj5Ux4+1uPPEaN\/bqSw1IFvrS05OZiVcdycgo+pkqVixrhsvOSVSDnoqP+4Ta7tXQkyG12Icy8ODdsnVEFCKliGOoZWTkaB7+MjY2vr68HymZqkwTPGltNZFvBNRGuxUQPeiDw9Gh\/Jn7gNru1dCTIbY62cW7GsqH4ZKkChO0noxFyWhSuTI24c8cyh8c\/Krii6lUuaoSrpMHDBmnI82RI0PfkNru2dCTIbXZ5jsC2kazGTDNKDh+s+4ogh7kOyFUy5NDe1GK1uLywPXmn4Fl7kkz7iORgwiO4ZivYbY6L0vESWMXCrraGSx4I8i\/r\/0yPEzzz7JwjstWsE5NXV1fX8DsraysvHhLuN88qF0XC1QtdPCSedpttapwIN1jf8JCPv5d5vSjdHK7yVHXr2fMw2scnJqemp0l1397LffHpzBjxcejqJAtb5RJphEek22zPJAMVix3\/ZdjMoTKvRwseL+s9pvLwNV2uvz9B+N78q1wUCVdqF3Wh22x16Uj0NMCqQG5gQqNUfpQSCODHFP\/qSGdm71QXe8xG50aKuvNePvJrcf\/VSgxMVLl4g3DmNjtbOhLlkBsbuRkU26PyJBKszsJpsqgV3L2ES91md5aORDPk7qlQFlUuGqtcHCb8H25zknCb3a407jjkYs21tzTbWCt4eMJ1FbTpsLSF2+yJ0I7yHE+rK5SF\/KDKRaEwSXuVi+WxdIAN51l4zhFTQcXFIRdidSt4eMK19I2GjXULw9vTOVgVh9zAxGUhjlS5qNW0aWwsExMao80JvFPNKhxyh1ZYvUkyRcJl9zDSEgw3s8+REFcJdLWK\/yUccvdXuagRnt2XZ9v0HyGeC\/YYngMjxEySLHRXcOOEG3DFxRYoEWkuqnTpC3fM5VUuYWa84BV12efCbIvUMhi+OxkKCaPAFWYlVI\/VcyZcZS8EkUQRWkWs7O6vcgk\/TVlpPyO+G4kLUZKdKY+9lLt7Z8JjP\/VvhWz2b7vP\/\/BdPgeIUkremO9LEaLlPmf35VlCuHY1LspauPD8xclPT\/aVj8wOy34c09evj09Mtnd01tQ1fJnzl9eSfrsjbufdPjvsZJrN5OkQzJv5r\/nrDx5rz4XgG\/zTbS2r3KtcNO1qpNEbF3yakfdK3umeuMDu+bWp6cGh4XPn28+3tdfU19U3nGlrvwDpHxicmLy6srpKv3Z9Zqa3r7\/yVHVsrv+lpN1Wox6mL8XFRhxu76jCognasbC6vF74qzbfhulDkfDe2QEt1S+CUmPydGZM8+U7EZT5xfmOC13guam5tbnlLEnjmeaq6trKk1XFJeW5R\/JJ8D3+a+jSMM0\/WlpaamvvOF5c5j\/s2xln4ZwzpYmfJgdFWCfQ0k2X\/xGg6hnq7uzqHhoeHp8aXVieY+NlPq\/4JCKrXLTuLqwlNy7CLcbwXrgZeM5W11ZHroz2XOwNK9DqdfWNJaUn8o4dJ8ESANTpkxq+PBKYUn403jrOPdSXArx7J7ppGuSZphasjEH7gcLlYWOkTvdVuLO+yEyVi1bCtWxgJrImBvBeXFnAvV2+ebO3b0AL3lKBtm9obCoqKSsoLC4sKi0tq8APSaUzzrfH7bAzneO2lMrQZD\/uxtVrU4dyj6rslIhfWFsL3LeLY90ODnLm2ApuhHA4+urzlUXxg14ZuNZrGG+pwF2njWyDOIeLXlFZ9emhj+\/2P8g9IOT+QRFHGnIJ78TktLAboY6NjdNNm7g+7gjkFlW56CA8rEMuUia65IuKT9mYYTN4h3IOrX6i4tTg0CW8+I0bN2CdHi4+sjOes9Gu0pfihkERv03dQ8Z5Wka2xv0YGOQDYxfth9z8hgccCA+bPBMJM+0yNn2FdtjkgjeTltZzZScqockhtXUNc3OBMcagHf98I+11vol0lTHMzval3OPb3NV90cAmxwzy8rZSN1QNmq9y0U24ukMuyto0yq9Sn7x16xY5zHwJh+DhBtsEOYSUOVCHxf7tkW\/4Qq4yKMLBvpQ\/ZwTso5Ero8A7rH0euj1DIPC5uvbR8f3ebQU3Rbj6hkdCjWuRA8c\/uZO84Y03k7Pn2pgyb2u\/gEcWFnvjmea4Y7EcIVfvS3FkUMR9\/i3n29pxb\/MLikC4ylZKSgLDCn8+OT25I8mO\/ZUsrXIxSPjY0oSSQy46CrXIsbo8qwmHtHd0Vp6qBuFAHWwDcgi++S7\/IEfI1ftS7HfIX\/W\/AoMFAryP5hfqxZsEN2p9ff3E+TKPtoKbJVx9VKMoUHcJ4WSxV5+uhX0OsQ5ylUER9velpOVm4sbW1DWAcNlt0rTI1WtTgQKk+QWrtzG3usrFOOEqE5fdWdvkNsKXb968HQMbth\/y5eXlquraN9P\/x6ZBEdn2xaU3+7adaWoJ7ECekQ3CNe5brrTVMdR4SWuRI0myvQ37N3gfmwz8jVLJusicqct3ZV9PX78e8HfGxq0mPAjyC51d1MGC7\/8zditPhzzH+UERu3zPj1wZJRM9IyvHMN5MjV+fmbFUjVtd5WKW8IXVRSWHXMx7UZE\/Hv798OURqie3gXBIZ1c3fHKCnEpc+wcGs4qy+TrkKmUw9pQ87ot9C7oXKxoILy2vMEM4ZG0tYO+k1yTZXOT\/TOWeDQuOTcb+TGWyupjZplgvHb+VVZ7xqngJK23tF4hwmOh4cAOV2DV1LyTvssHmtM13A9jmnfCgoPr4xKRFBTA2VLlwIFylL0VsgqMiiZWxMNEDdtDCoj2EQ\/DQg\/ATFafaOzpx6ssjV9ILMiJmUMTdvgfzC4pYniyoycSAgG0y1Pfl7bUzSbZhzbHJzB8rjV4Wm+AoyQsZzwM5amyyou5FySEH3pQkv3HjBk4Nfb4t7r8iY1DEff4tRPih3KMmw2zStBnsncONOR6tcuFGOBxypXlPotBNRY3DRL916xYeI5PNJ9ql8UwzEd7Z1ROowR4cejvjfyOjLwWEV56swpsC3hDzeEPm5xfW19cvDl3kniRTuj98q1y4Ea7elyI2wVHyxs93nidb3baQ24XOLuBdUnqi8lQ1nTfpaLLdgyKs8d1i\/DGUKuNIOEXUJyavxqQ95cUqF56Eq\/elCIdcxVanzBn3LhQlgaFOraYU6sM3kTEowgrCIfTR8C1Tt63KhTPhKn0pYhMclcwZqKOwrT2Q1zecOVZYlHfs+OTVazjpqaoamzsiLfLdLCIc6+DCwqKv8qCHWsEtJFxlUIQoWVdxyO2EHBgczS88fPQY9VEdr7CqbEt9A1PuDrlFhC8vL99cWeFY3GZnlQt\/wtUdcjEHRqXKjZnr8I0tDby1nj2fczgvO+cIVBNO5z\/+vXXvy84NTDf7tlEsnS\/h8\/MLa2trvIJt1m14YB\/h6n0pYpyburlOgTdYhtal0KDoMrJyjuQV0If1dGqMI71T3H03li1LTE7jSDjZVvjG0gJ+i6pcrCIcx1dtPrEJjoHA2\/nO84NDw9SXApVuhTKvPFWdkpbZ2noOp5iZv27H0BVbNjBlhPOqeJGG07kQblsruB2EqwyKEH0p6im0Y3V5AJssdihz7t0psM+zDh2Gb4nX\/\/LUZza8Kds2MKWq1eKScu6ET0xeNd+CYn+Vi7WEqwyKEH0pYS12UuZU9IavvIx2qO6klPQ7emnmkm3b+tizgek3sd\/SaHQQDlOFI+H4apJwO1vBbSI8TF+KGBQRTplT+A1sU+Iaprt5fV5QWEyP7MLNuaczY+x8RzZsYLov9q2RK6PGJrRZTbgjVS6WEy4GRZiU7Yk7Eitjoc\/BOenzW7duzc7OadwgRSqw\/GG4Lq0sOYJ32L4ULoMiKGEGNW6+P5w74Up+Su\/sgLcJVx8UIaJuGvX5\/vx3a8\/V9g8Mwj8nlQ7UFxYW4R+GNeDxC9emppdXb9DHUXmx1Km9+KzuS7nPvwVOON\/mE+aHmxnM6FSVi02Ei74UjmOYYboDdbjoQJ1C7nQA+6XbB2CGAH58L\/0FHAUdh1\/K3e3sW7B6A9PE5DSOLeKQ6zMz5mPpSuta9Vh9JBBOZTBiUARf6\/232XsOHP+k6ExhU1cjkAbwRDhNYg8YlnMT3ROdJ\/vKfXXfOg62bYMi3vC\/ztcVn59fMEm4g1Uu9hEuBkUIsacvZbtvOxQ4DWOMT0wxTzgWzbW1NTNVq0rRBxuqXGwlXAyKEKLFcDXpu93lewBsczTU4f7cXFkxPK3N2SoXuwkXfSlCbBgU8ar\/FTZx9VDuUTN4UxExDHXD3aNK1spXbb4Ne49N9pxGDIoQYvWgiLt9D1JEnXYmNLCxEZOp6Wm8Dr4aC6Q7XuXiAOFiUIQQrX0pJny3fbFvsb2NzMTbqAbhfO85Y5ehtBuMbVUuzhCuMihC9KVEoVixgSnUOM1s07vBcJCsr6\/DCf+y1GD1vlOt4M4TruaQZ28VD31UifqgCMO+2y7f89Dh4DMxOc2YN06ZcHw1ZqK7ocrFMcLD9KWIQRHRFnWzYAPTQFD9WKBnq39gEGq8prbewJ4n0OHZ9el8bRObk2SOES4GRQjR4rKaGRRxj28z8DZmq9PgB\/jhxhS40pplc5WLw4SrD4oQfSlR55BbsIHpkwn\/DVudmsZT0jI1VqqPT0yu3z7iqv7Gt8oluy8vugjfEBuYCrF4UMSerJfhjUMAeUZWTljIx8bGqben43Kb16tcXEG42MBUiMa+FMO+23sF79DDVlPXAE2uYq4zvGcWrxvekNDxVnB3Eb4hNjAVYn1fyt5jv79xM9A\/O3Jl9EhegewEmKvXptbWAnhPzk8ann7jqioXtxAeZlCEKIOJMrFoA9OnM2PG5kboeQPnjWea29o7YLQD7NnZOVLdOPqu9pgZbqW0Qu1t2O8sYg4TLvpShNgwKALo+mq\/Xbg5p\/QQZrQkmZxd56oqF3cRLgZFCNHal2JuUAQY\/uLkp1X95aOzw\/TsNV9uANvmR98oVdo\/U7nHcb6cJ1wMihBiQ1+KIxW4TlW5uI5w0ZcixJ5BEXZW5jlY5eJGwjfEBqZCrB8UYWeA0J4ND7xEuBgUIURjX4p7fDdcp9JFOljl4lLCN8SgCCESsXMDU+6N7s5WubiXcHWHXPSliEERbvPd3Fnl4mrCN7y8gelLubshr+a+9LvDe949+vb7ee++mvzyC\/HP3+d\/GHKXT0QTXDEowuo6PKdawT1D+IbyBqZuGxSxM+WxL05+erKvXKWaYuP2hsEDg0PnzrcXlBX+b8re\/477xb\/7Re09h74UZ30311a5eIBw929gCraPteeyC55fmL\/Y23f2XFtpeUXZicoTFacqT1ZBGhqbOi50jVwZpckhOBYXF3v7Bmpq62Nz\/S8l7b7XL+ILpgZFOOW7uWTDA68SvqE6KMLxDUx9td\/SRd5cXQaura3nmppbgTdtGNbSeg5ypqml+nQtaD9WWJR7JB9SUFgM4Icu\/WPz4M6unvKKk8l5KTvjdgqSjQ2KcMp3c3OVizcI33DrBqb5bTl0edempoG3lg1A2zs6G880V1RW5R07TgIdDtTpdYYvj0Dbxx+NF5wb60ux33dTaQV3G0SuJnzDfYMiMlqS7vgRhvb0htKGGi8uKS84XlJYVFpaVoEfUnsTcZ5dcGhHvOBcf1+KvUP+XF7l4iXCVQZF2F\/b9FLubjN4S+Xc+XbwDMilnEN6+\/rxz3cy3xKBd72DImzz3VzbCu5Jwl3VlzJ0rZ\/8Z5N4B3F+vLgMWh02\/OWRK3j9ubn52rqGw8VHtsQ9Iqi2Z1BEhFW5eIzwDXdsYPpU6pPMbeZFOIvMlZ2ohOqGnGlquXEjMJME9jz++UryrwXV9gyKMJ8kgyoShBs\/HB8UUdicj8uAIc0Xb5Ku7ouna+oIcijz8YlJnAsqHd8Li91VfSmeqHLxJOEqgyLsqW26eOkiXxM9VJqaWwlyCHQ4WexV1bXf5R8UkOsYFGGl76a0uFSP1QvCvd2XQjvOWko45dUCFnt5RXnFyQudXRu397glyAXYjg+K8EqVi1cJ33B0UATcbxsIJ8irT9fCPodIIX8z\/X8E2Fr7Uqzx3ZQ2b3BblYuHCd9wblAEbZRjkR8e6pafqqqRQj59\/Tq+fzLxlwJsjX0p3B1yd254EIGEO7WBae25WipNAeo2QN5xoavyVDVBTtVv+FpcUXq3X7TQah0Uwdd3U5ot9VWbz828eI\/wDYc2MM2qzrg2NU3FqjYQDmlrv0CEQ2Co49Qtrec+PPS+ANv+QRHeqnLxPOEbTmxg+sfDv7fTUGfRdSK88UwzTn3jxo3S8or\/iBUzrbT2pfDy3bxV5RIJhG84MSgChjr8YZx6YvKqbZBT1K3sRCVVvEGx\/2\/G7wXVGmNgXHw3leScq1rBI43wDeVBERbVNu3Pf7e3b+DW7cMeb\/y2rd5BGfKq6to7arys4p9FelzPoAiTMwWUlg\/XVrlEDuH2b2Ba3lQ+cmXUnrQZE7BNkI+PB1w+mO7b4v5LUK1rUIThMhiVSng3J8kihPAN9Q1MLWg2+lXqk0CObHV8tYfwltZzJaUnikrKOi4EMmd9\/QN7kl8RSOui0VhoXSWM5+Yql4gifMP2DUxhq4M6mtNivo1UY3qc+kxr6xpw0smr1\/YkvSx41tuXQkly7TEaaAiVVFx2X54g3L5DZVCEFVG3xMpYOOTLN2\/aBnnZicr8gqKj+YU448rq6quJgnAjgyIouq4l26JSMOf+KpcIJNz+DUylkNuQIQfhR\/KO5R07Tu93d\/wLAmZjDjkLsMt65lgg8HOVoJ1XkmSRRviGE4MiCPLZ2cAcZXzVOLPNmBSXlB\/KPVpRWUU6fKv\/UUGygfozWdQh0Nj4qq78PVTlEpmEbzgxKOK7sq+BH9W6QZ8PDg1bRHjB8ZL0zEOdXd040eXREcGwmWpWk7K3Yb+HoIgowjec6Ev5bfae853nhy+PUNW6RRZ7ds6RxOQ0ql397tTXgmGTjrQZcX+VSyQT7sgGptsTdxyry4OVTlk0oD5yZZRv0Ut8Ykpzy9lAHv7m4v0JWwXAhlvBTAqeLm8REWmEbzg3KGJ\/\/rukzNmGB7wmuuUXFFWerKJ356v9VtBrftiTYfFElUuEE77h3Aam98dvJc8cOpyMdnwdGxs3E4RrPNNcczsNjiO\/LUdw66Ch7pUql8gnXMUht2ETHBjtiZWxUn1+69at2dk5YG8A9cGxfoE390lPxsSFGx5EL+EbTm9gCn0Ou728qbx\/YPDa1DSpdLLe8U\/QrtS7glUASwNc+qUbS\/Qno7PDfygQI5w4t44bEK9UuUQL4Y4MipBV6UD9WF3e4NDwxORVEA6Vzi4S5C9JjqC3cLKv\/L2SdwSrbiDcQ1Uu0UL4hvs2MH0h43nQDl+98uyJ+s7aruGOq1OT1+buyKWpge6JzsRGv6\/u25dyd4uYuasI91CVSxQRvuHWDUyFeMsP90QreJQSvuG+DUyFuK12NcKqXKKOcPsHRQhxRT48d1s0e+BRRPiG+qCI5M0ChmibBqFdPNQoGtWEb7hjA1Mhnus8ce2GZIJwmcPxDUyFuGEIRJTY59FIuP2DIoR4F2\/vxs+jl\/AN1UERNmxgKsTqBDiv6NozlXs87X5HL+Ebjm5gKsS61LfKLoUGtHdk4B2lhG84t4GpEL4d4AAb7hUvve2JnQYF4VodcvsHRQgxaYHfnbw5MFAt62GO6jooMeb1yLkg\/AcOuSiDce2wVChnwAz9DJitm7gWFDaPGMtcEH7nUOtLEWUwdlnaUM6AGatqYNpp7jYbYA5l26NdJYLw8IfSBqYCcotg\/lHKQ3pHF1skcNOy+\/IimG1B+J1DySEX+TMzSWkb3GYDM5hePb0Xa\/rx4fKIB1sQ\/o9DZVCEqITRGgOz3W0OGzMDzDC\/47vS4Yt5tzNMEM7nUOlLoZpW0UnOYmCOu82y6eu9DfsBM5QzPsqIDJgJws0eSoMiWHeKIzNhhNsc6jyDZ3xYcKEBc\/QY24JwDofSoAhpqjwi62Fc7jaDZ8DcOzsgHlFBuKlDpS9Fqsy9Hn4LcpvdALNwmwXhNh0qfSlBxa2eyKUFuc1uiIGFus3iqROE23ooDYpwOefBbnOuG91mEQMThLviUBoUocQ5oLIz2B7kNrskBhbkNosYmCDc1Q65ShmMShwO1HEPxbnfbRYxMEG4Jx1ylTKYMKhnbwWQBrZAZG6ze0pHhNssCI\/YQ2VQhA4bPmcbdHsg1nWb+SBxW+kIc5tF6YggXEDubWFusygdEYQLyL0Ns9RtFqUjgnBxeBty5jaL0hFxCMK1HkDFcOBNuM3iEIR74AA\/uvLkVrjNouNCHIJwy5V52AYVLm6z6LgQhyDcSc556XPRcSEOQbhLD5jKsJm1q3S4zWJQgTgE4Z48YEtDCYPeIBFuszgE4eIQhzisOv4\/7bR8wavFBQ8AAAAASUVORK5CYII=","width":143}
%---
%[control:dropdown:5700]
%   data: {"defaultValue":"\"red\"","itemLabels":["red","green","yellow"],"items":["\"red\"","\"green\"","\"yellow\""],"label":"Select an object","run":"Section"}
%---
%[text:image:2312]
%   data: {"align":"baseline","height":25,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAE0AAABMCAYAAAAoVToVAAAEVElEQVR42u2c4ZG0IAyGrwRLoARLoIQtwQ7WEizBEiyBEiiBEiiBDjydifM5jiCQBPU+fuTX3e7iIyRvEuBnnuefamlWIVRoFVqFVqEx2\/f7FYtJMFGh\/QPTLPZZbFhML2YXmy\/Mwv8O8Nnmz0ODGdQvZiIAxZqB7xR\/ChrMCk0Iymfrb3xeDQ1ghZadW0zBclv9Vxv4Lrlbzgo+G1rGn1dBWx8+MLPWBxpDgBJ\/Zwy8GE3xO+zQYCb4HkAyzuou8KKGR0IDJ29KwzoZRx8IGOIx0MDfuJJ+xSNhxotA4SheINWyOA5OldRQMAaXEGW726B5gHVMUAaP2Ux50hWH5gG22kQchQ2jruuKQQMfFhrMQATMFRDEkh0aREkX4XDFC4BljTXngWKXy4CIgvZELnCCM2zQAsL1zARC721OvgeIssCMG8ihwZKZOWcZwodSWUsNTQd8wlHUNi+FpsmgQXXBm5ocwHXEKl+CWJ4L2YcKmvUAaw6+zuXMsl29TRequwWrw2hogaUhDjPC5fgyT7S82yQWmm9pjMfZQlxKutNUNjTwV+hok\/n97qLAODMLYJELrb\/44hEJTQcKlmK3fI+JuYbcd2SE1udCMxQhOuH7XWiwAEpcRHT2LOHKQc\/M0JodOBWbRUTmvxTWpEL7cEPbgWszxK69S7Nho9pI2F9Yl94E\/ipKvsD\/F89Hc6TGpe8h6iBtArq9Ua6oVGi+IKCwXZ0CFVnWYBB6MJZW3EPFrNcw0CSR75oKPrCjSPSzoRE6ezbf42uc7Pa5yZyXdjc0TvU+eAKKOZE3rtTyFATQOEs+OtBSbBN86nT8OwYaRUtOcVdcPQ0ZEeEm1C49k1TQLAG0vgC04TBrmoiAZEL1Q5TkeHggmMFfbT6rS2gSydDOAYy4NS+QHGpz9gnuYrzQkQaTRlHuz+AMCAbbCTs8t8Im7IZi2ycsIcUsalvE+CwmYZcXIV4QJOsWbNoKjFCSclxV10S\/K6mLkCSVDoYNMBPyReYXIRP8Dxc4WRLYiT\/TXI0V8n0bEU3qrLZbpK8laawI7sES5qsDsfgWHM1isj4BUe1tIJzVimtbwn6XkGCCZkpAOwkAuG0JCQGB9DRcYtqF3a5qU1YOVyT7EDVdWHWZxwVIEmgZ6Y8m0mqopm5G05luU1\/GctEFJYch9JmCFFpiNNMFBK7G+NATOUO\/UTlxmWrCCHp2fHsi9pdJ481Vzo4znQn8bodN206AJW955Uio3feB10IEgCWXkTgkQf8SYGUPlF0MZHwgsPERRxcvDqiaJyxRzxFx973zkOyFj3OcZaNIeeQoS+EcB\/8bjxyxHKeNI8roZ7qO5PhRyXKOhQdqGOWIfdUVEye+JHQAbcJesLS74GnibADdcW2OjMggttZgf3b91+FasAEgmYgNMWx3gZTyM6VO0qkSF6fccWdaTwxQbSeQ\/4ub+nZLTsUWAva3YNXrDeudkBVatQoNb78ox6WFMDJfcAAAAABJRU5ErkJggg==","width":25}
%---
%[text:image:11b6]
%   data: {"align":"baseline","height":20,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAADUAAAAxCAYAAAB6d+FmAAAC0ElEQVR42u2aO4gTURSGs6Lugo1WW2ghgiyCr1VWbRSR9YEgKoKohcQmEDAviYhBIaVbbKEWYi22YidoobUItoqwjSui6wt119Wsj+\/onXAcJslMZpI7AxP4Sbh37pnz3TP3zJ2TyWQS9imVStvRK1G5XL5ZqVRWZpL8MUCf0G+lz+hYIoGIyDYPIEc\/i8ViLmkRGkMfWwA5WkD7EwHEutmCs+87ADl6zfHLm4MLhcIqGs7RcV0WoA1xCa3vIkL\/CTsX\/w7G2Bka5oIMjlo4M6GBmOTRABHSeirh3S0LzSYQugHHgAPEJG+l7UOXtr6LgQeqYQZdRVf6Jc5frdfriyKIkOgHQToi1+0XpxGD+ywnhc348a5bICboqLMYmx02784hgRYAOqEzjHWoSIHiABU5kG2osECMP9lqC2IFiqS0qSdAtqAM0Ey3QOhUp81iX6F6DtRvKM6xsedA\/YQKCdQgyx0PcrKeQ4WNkE4K+LhGb6usQOHQOnnOCb31+WdrNW1TQC22BoW9Ddh9i6bRfNDdNkCH1c59LW0vpc8qFDYfo\/tkvMFqtbqM3xdkffgAmseXQ44dM3ba6bcGlc1mh9yzbaK3k\/Y37YAYc9Dl47A+xhoU0dlh7A579I3qRx6lbwAd8PAxHlA4V5BF3ea8Z11Ac62e52IDhb1bZuZL+lFdRWtQpflZzj3exlZsIvVc2b7jdW8xiWSWVL2ng4\/2ofL5\/Ars\/XJdXudN9wC\/R4Ce5PurFH58RN0+FLb2et130D1VVJlCu3zasw9FFC67dwboialUnZadQcBJsg+F09ewd9tkwLFcLrckZOTjkSgi3pmkUClUCpVCpVApVAqVQqVQ0UDp6s5IHKFMeaz5doufYuYz9bf\/XXmXQaqgcZH4I34pqBd+Qluz\/LpBUF3qCEUol3LgwyQAEbFHUrDxW6OTyk7NFEsaMYNpGL9qfoH+AOOEPfJuI6OmAAAAAElFTkSuQmCC","width":22}
%---
%[text:image:2df7]
%   data: {"align":"baseline","height":26,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAApCAYAAAAiT5m3AAADOElEQVR42r1XSWgUQRSNGndR3Ii7V\/EmCCp4DaIe1Oh4EMHBwMjsq47Eg+OOJ0VIICAeFAIeXEADHgyoqChE1ASNhISAxH0jg5gxq+\/FX1A009PTM93T8OiuX7\/q1f+\/+tevqqoCTyKRWBmNRo8Cj4GPwF++I5HII7zT8Xh8eZWTTzgcnh6Lxc5j8kFgHMgCT4G7wBPgl8j\/YBGnfT7f1LJJg8HgQrGQE3diAXVciK5DIsi3o7+devh+4Pf755dMmslkpmGih0LaiHa1hf5k6J0T\/TYrfdMHKz8pFjTr1kFWD9ltvJ8Bt\/Dt1d0rYeG4Y7ZJMbAG+A300HLKuHkw2SuxKAe8lQ3Gdjv6llLP4\/FMQfs1MMBQ2SUOyaoPihur0X4BDGEDHVGLYbwhawCG6QG6W6yu43jo+uwSt3IyWLlA2vt09+F7CwlDodAaaZ+Q\/j3inZn0GENil\/gd0Ke1rwEjgUBgDqzYIe4lBiBbkkqlZov7r2hjXtLldom\/0LVa+x7QK9+NGjHduUvkfcAdbUwb0G+XuNtg8WV6QeLXbCDeKzo9QJM2phPosEt8ExijG9nG5NuKJK6VTTeXrofudbvEh2TS49r\/eakQMeQXNV2v9Nfbzc9c8U\/GWv2LKkmYEat+r9c7Q+L9nZvOdhLBhOF86c+MWJ5JkLVIX6jUdM1Jbsgk3NU1RRBPHCzQ2crxZR0U3CBC8saKGO3NCNNGx85kpk4QPLfaXJr8jGPkKs4FfqesJv9kcP1OvFeXa70Z8Ygmz1KWTCYX4fuDqlAQhnUVIWafQfesXjjgF5zlCrGWSBQuyOm1nuEARqGTqRgxKxejrm1iYL+URKPFEktJrGSDpRJ3aYlGYRhFwjK8T+lyle+1yrUsYjMM5ZG9l0tBzk3iYvGfWE6XVWYniyvEci1RgjEpZwP6Itwi7jfppHy31Mz3HSeGNZvw8aOAUs5h0olUqqqPFVIhjlcI34wXsMMuWWhEb76ibwPw1U1ibmCzwm+tdil3HEyfhcrdBhetbrW6pHe5RNxiVeTXukTcVEyevupCjA9YEqfT6XlyGXOKuINnQ1GnEy9y6uJeBuFn3qXxxyzmnP8Amz0wy7TM4YgAAAAASUVORK5CYII=","width":19}
%---
