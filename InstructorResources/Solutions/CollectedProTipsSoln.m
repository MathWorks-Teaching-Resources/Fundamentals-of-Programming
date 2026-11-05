%[text] %[text:anchor:T_276E9BF5] # Collected Pro Tips
%[text] [⇦ Main Menu](file:../../MainMenu.m)
%[text:tableOfContents]{"heading":"**Table of Contents**"}
%[text] %[text:anchor:H_494618B9] ## From [IntroductionSoln.m](file:IntroductionSoln.m)
%[text] %[text:anchor:H_C4CFB20B] ### Running Code
%[text] - Run this code block by clicking the  ![](text:image:125f) **Run Section** button in the **Live Editor** tab.
%[text] - Programming languages need a way to communicate results to programmers. The simplest version of this is frequently called "standard output" and normally consists of printing the results on the screen. 
%[text] - Adding a semicolon at the end of the line in MATLAB tells the computer that you don't want to display the results of that line as standard output. 
%[text] - Notice that the code has line numbers associated with it. The ![](text:image:05f6) **Run** command runs each line of code in order from Line 1 until the last line in the script.
%[text] - Although it may not look like a function, \
%[text] ```matlabCodeExample
%[text] doc sin
%[text] ```
%[text]              is another way of giving instructions to a computer. This structure is called command syntax in MATLAB.
%[text] %[text:anchor:H_9BF46805] ### Errors & Recovery
%[text] - In a live script like this there is an ![](text:image:9d46) icon at the top left of the window as well as on the right-hand side of the line where the error is located in addition to the red text spelling out the error message.
%[text] - You must fix any errors in the code before you can run any of the code that depends on it. In this case, each section is treated independently, but if you try to run all the code in the entire script at once by clicking the ![](text:image:433f) **Run** button in the **Live Editor** tab, no code past this section will run until you fix the error. 
%[text] - When there are errors, in general the error message is printed in the same place as the output. \
%[text] %[text:anchor:H_9532A197] ### Clearing Output and Variables
%[text] - If you have accidentally run code you didn't mean to run, you can clear all the output in the entire file by clicking the ![](text:image:1d94) **Clear all Output** button in the **View** tab, or right-click to bring up the context menu on a particular block of code and select **Clear Output** to clear only the output in that section. 
%[text] - If you find that you have redefined something you didn't mean to, the command \
%[text] ```matlabCodeExample
%[text] clearvars
%[text] ```
%[text]                 will clear all the data in the Workspace in MATLAB and allow you to fix your errors without restarting the program. 
%[text] - In some cases, you might just want to clear the one variable you have accidentally-on-purpose redefined: \
%[text] ```matlabCodeExample
%[text] clearvars pi
%[text] ```
%[text] %[text:anchor:H_8D78B6C9] ### Working with Variables
%[text] - Programming languages also have to store more than one bit of data at a time. Some programming languages share information about what is currently stored and therefore available to be accessed. MATLAB offers this information in the Workspace window on the right. \
%[text] %[text:anchor:H_0A4F8E42] ### Writing Comments
%[text] - Comments should explain the "why" behind your code. \
%[text] %[text:anchor:H_9CAB43B8] ### Learning More
%[text] - You can frequently learn the command syntax for a particular operation in a computer language by either reading or searching its documentation: \
%[text] ```matlabCodeExample
%[text] doc square root
%[text] ```
%[text]                 or by doing a web search for the name of the operation and the computer language in question together:
%[text] ```
%[text] square root MATLAB
%[text] ```
%[text] %[text:anchor:H_82F63CC1] ### **Common Errors** 
%[text] There will be instances where you type the wrong command or forget to use the appropriate capitalization or spell a function incorrectly. This is definitely not the end of the world, the main thing that you can do to minimize the impact is to learn to pay attention to detail and to remember to check your work. 
%[text] 1. Each line of code must be complete and interpretable on its own. This means, for instance that you cannot end a line of code with `+` or before closing a set of parentheses. 
%[text] 2. Capitalization and punctuation matter. For instance, the variables named `a` and `A` are different.
%[text] 3. All operations must be explicit and clearly grouped. You are probably used to writing `+` and `-` and `/` when you need addition, subtraction, or division. You might not be used to writing `4*a*c` rather than $4ac${"altText":"4ac"}. Similarly, programming languages follow rules like working through "parentheses, exponents, multiplication & division, addition & subtraction" in order from left to right to evaluate mathematical expressions. Thus `b/2*a` $= \\left(\\frac{b}{2}\\right)\\cdot a = \\frac{ba}{2} \\neq \\frac{b}{2a} =${"altText":"= (b\/2) times a = ba\/2, which is not equal to b\/(2a) ="} `b/(2*a)`. \
%%
%[text] %[text:anchor:H_E2E2F213] ## From [DataSoln.m](file:DataSoln.m)
%[text] %[text:anchor:H_AB8AA312] ### Classes
%[text] - Computers store all information encoded as numbers. This means that the way information is encoded results in different types of data that must be tracked by a programmer.
%[text] - One numerical class of data is `double`.
%[text] - One textual class of data is `string`.
%[text] - Programming languages have rules that govern how and when you can convert data from one class to another.
%[text] - In MATLAB, concatenating a `double` and a `string` results in a `string`.
%[text] - In MATLAB, you can check the class of a variable named `varData` by running `class(varData)`  \
%%
%[text] %[text:anchor:H_B7A302FE] ## From [Arrays.m](file:ArraysSoln.m)
%[text] %[text:anchor:H_F44D4D3B] ### Indexing
%[text] - Programming languages differ in their indexing, but they either start indexing elements with 1 (such as MATLAB) or 0 (such as Python). 
%[text] - The last element in an array can be accessed in MATLAB using the key word `end` as the index value.
%[text] - Since there is only one changing index in a vector (either the column index for row vectors or the row index for column vectors) that single index is sufficient to uniquely identify the entry.
%[text] - A matrix is a 2-dimensional collection of $mn${"altText":"mn"} elements arranged in `m` rows and `n` columns, such that the `(i,j)`th element is in the `i`th row and `j`th column. The order of indexing is always (row index, column index). 
%[text] - Higher dimensional arrays add additional indices such as (row index, column index, channel index).
%[text] - If an operation involves an `mxn` matrix and a vector that is `1x1` or `mx1` or `1xn`, MATLAB will copy the vector to build an `mxn` matrix and then perform the operation.  \
%[text] %[text:anchor:H_D3F7D3C3] ### Concatenation
%[text] - To concatenate two vectors (or matrices with the same number of row) `rv1` and `rv2` s in MATLAB  \
%[text] ```matlabCodeExample
%[text] [rv1 rv2]
%[text] ```
%[text] 
%[text] - To concatenate two column vectors (or matrices with the same number of columns) `cv1` and `cv2` in MATLAB  \
%[text] ```matlabCodeExample
%[text] [cv1;cv2]
%[text] ```
%[text] 
%[text] %[text:anchor:H_C4E9E7D6] ### File Types
%[text] - Data can be stored, presented, and transmitted between programs and computers. The information about how to interpret such data is contained in the file type. In many cases, there is a unique file extension such as .docx or .py or .pdf or .mlx that tells the user and/or the program how to interpret and/or present the data. \
%%
%[text] %[text:anchor:H_F0D687C9] ## From [BranchesSoln.m](file:BranchesSoln.m)
%[text] %[text:anchor:H_9BADC9AC] ### Running Code
%[text] - If you would rather stick to the keyboard rather than using the mouse to run the code blocks, you can run the code blocks in the currently selected section by typing Ctrl-Enter together. \
%[text] %[text:anchor:H_1F4A360D] ### Branching
%[text] - If you wish to choose between more than two options using an if/then branch, you may want to use the nested if/elseif/else branches depicted for higher values of `n` in `DrawIfThenTrees(n)`. The MATLAB syntax is \
%[text] ```matlabCodeExample
%[text] if condition 1
%[text]     code to execute if condition 1 is true
%[text] elseif condition 2
%[text]     code to execute if condition 1 is false and condition 2 is true
%[text] else
%[text]     code to execute if both condition 1 and condition 2 are false
%[text] end
%[text] ```
%[text] %[text:anchor:M_BEA4B66A] - If you wish to select one path from more than two options at a single point, you may want to use a switch statement. The MATLAB syntax is \
%[text] ```matlabCodeExample
%[text] switch selectedValue
%[text]    case value 1
%[text]        Code to run if selectedValue == value 1
%[text]    case value 2
%[text]        Code to run if selectedValue == value 2
%[text]    case value 3
%[text]        Code to run if selectedValue == value 3
%[text]    case value 4
%[text]        Code to run if selectedValue == value 4
%[text]    else
%[text]        Code to run if selectedValue is not any of the options above
%[text] end
%[text] ```
%%
%[text] %[text:anchor:H_1C295A80] ## From [LoopsSoln.m](file:LoopsSoln.m)
%[text] %[text:anchor:H_11EDC2BB] ### Loops
%[text] - If you know there are a fixed number of repetitions of the code needed, you want to use a `for` loop. The MATLAB syntax is \
%[text] ```matlabCodeExample
%[text] for Index = StartValue:EndValue
%[text]     Code to run for each value of index
%[text] end
%[text] ```
%[text] 
%[text] - If there is a condition that controls whether or not a loop needs to continue, you want to use a `while` loop. The MATLAB syntax is \
%[text] ```matlabCodeExample
%[text] while condition
%[text]     Code to run if condition is true
%[text] end
%[text] ```
%[text] - Be careful with the ability to create infinite loops if the condition governing a `while` loop is always true. If a program is running an infinite loop, stopping execution of the program can be quite complicated and may require exiting a development environment or even rebooting your computer. \
%[text] 
%%
%[text] %[text:anchor:H_6785CA4A] ## From [ChaosGameProjectSoln.m](file:ChaosGameProjectSoln.m)
%[text] %[text:anchor:H_620C8123] ### Opening Files
%[text] - You can open a file in MATLAB by double-clicking on the file in the Current Folder window or by selecting the desired file through the file picker using Ctrl-O or **Open** in the **Open** menu in the **Live Editor** tab. \
%%
%[text] [⇦ Main Menu](file:../../MainMenu.m)
%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[text:image:125f]
%   data: {"align":"baseline","height":25,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAZCAYAAAArK+5dAAADpklEQVR42rWS+U8TaRzG\/RP0BxMTzcYYs654EIO7xl3FH0yMRwyKRnGLeGu3TkvrgQeKglfURcGVsBjZuMiyLOABLhgtq\/GoFwr1KNjKZdvpRc8phQItj+8MhXQcimvQN3nmeJP5fJ75zowAMOJrhjvEHohRk7SSrP8qgh\/3zkAg6Ef1q3IknVnVnX35nL38RhU9nPAEP+yKRrA3AH\/ADWdHCzJvpCIxax2qG3Soo72fHYEgRj4NPUEf3J1NsPs0RKLFS0MFNuUshfTiHijrdcMTRFNTwHTpYWtXo8V1Cw32Yrx3\/we95y7+fpKOeftm41DxWaiaTP9LcL2iki+YIo6CxVvDQbX2EtSZz+Oh\/iAeGdLJfQXUpmvYeflnTBdPR9xWEURbKC6RBGVXy\/mCSZu\/Q6OzAg1tRVBbcvHYcBR3mmX4V5uEsvoNUDadwmurEglZC5BamPnJNyguucIXTFz\/LQH\/juemM1zruy0KVL1bhyv1iShQr0GWKh7xv87G1C3RuKi8GRFca\/Bw58Kif\/iC8YkToSIjudeagupmCSp1ffDCl2sgLZiPyRujMHP1XCyIX4F40YaBEYWPioU\/17u460sFf\/EF4xIm4FbjJlQRcPnbtSjViHBaGYc5u6MRl5qEnNKrKLp5H8W3VXioNQ\/anIXXtDpQa2SQ\/8effMGYleNRpklEyRsR8mtWY0nG9\/iJWojzYeDbtTq80LuHhD9ttnP3eRfy+YLRy77BpboEbMyNxSxJLDLy8zgwm8onGjwjD0eaeTj8UaONK5GTm8cXjFw0Vjtq8VjTks3LmX7w9Qd1EcGR4CqdBTVkL\/u3HL6ArBg2MrnCptFowDAMhlrBYBA9PT3o6upCZ2cnfD4fGK8Xbo+H28s8my0QRJFMSzucbsYnVrC3NyLc6XJxeydPZ\/IF\/Tl+4iT9uXBvGNzucJC9DoQ4QkHGkWM8gUKhGIhcLkdycjJkMhmkUikoihqAuwjc4XCirc3O7YU4QkHaoYxB36CXax4QNPd8BLdabXC7PQhxhIL9qWn0YPBAgIV3E7h\/SLjZbIHD6USIIxSk7NnPE4SPhaL6xkJR2yGRsPkFYjEb8QCcNplhI7IQRyjYsSuFFjTv7m\/eQZq3k+YMae7mN7f0wQ1GmrsOcYSCZPkOejhwvd4AI21CiCMUbKdkdDjc7\/ejg3zU9nbyrzNe7gM6neR3tDtgs7URgZUIrJzAyAoMRrS+14PlDCrYJpbQXyr9zA9UsnMstTLoTgAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:05f6]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADoElEQVR42rWVfUzUdRzHrVVzNtetGs1lxNxckqU5l6tGy1YstubGTEROOCSaMRVFm49LI3SuWTrcbAqUPJ0lBXoIJpLIpdIxAe\/kWQi4446Hu4uHOx7kQX31+f2ktTbmUM8\/3rt9f7\/P9\/1+\/96fz32\/04BpjxL\/W7z35WKDoF+QKND4XCBo1yJujnlp6Kgi9Jtgu6xDfSrw9vYF3LozwthtLwMjbk5cPoY8MwoCfCKwZOtr3L4zzvC4m4ExB0PjTtp6LGzXxyHvkgWahxJYvOVV+YJRIXbRN9KMc+ga7uEa+kdbKTAfJzjxHa\/UrHlggTcSXmH0lkd133Ozns7Bcto852nxFNI9VIXDW8GBgs1InVGw9L4FXo+fy+BY5133w2bsA5do6S+kofcnLO6j8nuSjsEyTG16IpNDkPoMgWbKAvPXz6F35AauYYtKpLhv6sul9u90qlyHMXXt5VLHLllnYPOWkm1KImjHQq\/sS5iSwLy4AImiAsfAFazeYpr7TlPfo1fdX+0+wJXO3Vy0b+KcNYYS2zYRyqWyI4+N6RHIXqtg6T0F5q71F2cltHrOifNTKvl1dyqVzkP82ZWE0bGVYlscha3RnGqO4ueG1ZRYv6XG9Rtn61J5f\/ebCIdBEDCpwJzYF1XXjb051PVkCnmKSm7q2ifR7OBC+wZxv4b8v3T8ciMSfZ2W49WrSK+OpdSahqW7mM1ZOoQncVKBl2NmqflWu9Mwu45Q4fxuIvedlNg3UmT9lIKWaPKa7rrPrIkg1RLOkcowDpV\/Qsq19Xz+QxjCM7nA7OgX1GZWOA9S3rWfss6v+MOxTcjjKbLFUjARzcnG1WTXavnx+iqOVq0k+eoKNuV9QOAGf4TDIJg8olmRz4vjJCHeo0ZSat\/C7+3r1Kb+S57T+F80x8wr2XdxGe\/umYfstQru3WQ\/7bPSyC\/USbkgxOdtn3G2LZr8Fp0aS444V8jThTzFHE5U6lv4x\/h5ZN\/UxvS5cI1KqjhWiM9I3qebdfwqDVUyz55wvjM\/mPnxLyH1GYKp\/9E0YTOFVIdBpkSJI7cpUnV9ol5LZm0E30vWH+4NROqMgvs\/KmYuf1p1q+SsOFaIs4RYiSQqZQl+Wo1Hah78sJsROl3NOEsmJENGUInj66IQFiTMRt4lCx7uuJ6+7Cl19NJktg+blvPR\/kDkmVHgmwvnyY+f4GBZKHH6IJ5ZMaNd1r69Mh8Pecwg6BckCnx\/6T8K\/AN7hFpQI7w0ngAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:9d46]
%   data: {"align":"baseline","height":14,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAADwCAYAAAA+VemSAAAKYElEQVR42u3d25GcRhSA4Q2BEHhdaVXFmyRLqiKECYEQCIEQCIEQCIEAfMH3u40dwWSAT69aEl7Nzg4M0OfAP1W\/qyzLWu3p\/tw9jKp80\/f9Dent33cvEimVMqmQSqkZ1F\/Z8Ncq\/dfI\/NdMWAPdMQQ9UB2YfAC0mwHnXHUD4O73mLJmAAbruxe11CqCOgV2BWoA7wFsMdOVV3uN\/14BDWCzYOPBCdvvvNrPImZvAFj7w6bS+JV46Vo\/Ix6OATh8\/8ipIpVSJ\/U0qs7PjpMZwKuijaRcakE4W62facQeA\/BScFOpAtviuRnzAAzAs522GVfkYFfsjFMZwFPf2xbSEUjBO\/q14L0ygC+CyzVZ9\/UayAAGLpABDFwCMoCDPZwqALCZir0+7Noj3pyHU5t92JUDeNuf4\/Jx0D4+fkoBvJE6uVpJtdTTrnJrHgHYNt5cOrKZd5tb+xzA9uDGUsMGJp\/bCzGALeB9K6fuW\/kv71tZOKJPuT2RA1gv3Fhq2Kj0RG6PxADWhffAqUsjT+MDgMPDjaSKDUkTc3snAnAYvInUsgnpylrLV2quzESGr9QW8RZsOFqoAsAL9be8V5FqqSdaMLfHIgDPj7dlc9FKtVYQW8CbSEc2Fa2c23MJgK\/Ceyd472SQdz1RgNzeSwA8DW\/GBiIlZQAGL4F4+4DBSyA2Chi8BGKjgMFLIDYKGLwEYqOAwUsgNgr4LxmA1BMZLtslYPnGExafNlKyK8Ae75GF\/zztL9boZMdQiEPgjcAL4I0ijjYN2ONtWWwAb7R2bcRrA65ZZABvvHqTgOUbK1hcAO+kYlOA5Rs6sKgA3lmHTQDmiTOAd\/xQKzYNmIdWAOah1rIPtZYGXLGIAN55lUnAf8p7AKmncWl\/sUaTOpgCLL\/hWDqycACm+5yF2BLghkUDMP2vxgRg+Y3mLBaA6WS5asBcnQFM616luToDGMCGr9JcnQEMYMNX6bnwRlydAUyjrtKRJsA1iwJgGlWtArD8RlIWA8A0qVQD4I6FADBNqgsK+I83d7nU03xpf7FGs5cHASxfOJKOLACA6aqcoSgE4ILhA5hmqVgVsHzBmKEDmGYtXhNwxcABTLNWrQKY0xfApOcU5vQFMIANn8KcvgAGsOFTmNMXwAA2fApz+gIYwIZPYT73BTCADX8ufNFP+v3NXSQdpZ6WTfuLNVolZy2aE3DGUAEM4FXL5gTcMVAAA3jVulkAyy+UMkwAAzhI6RyAKwYJYAAHqboKsH94xSABDOBwRdcAzhkggAEctPwawC0DBDCAg9ZOAiz\/YsLwAAxgFcVTAJcMDsAAVlE5BTCf\/QIYwMo\/Ez75g7\/J9Vnqaf20v1ijYCVjAJcMDMAAVlU5BnDLwAAMYFW1FwGWnxgzLAADWGXxJYBzBgVgAKssvwRwzaAADGCV1ZcAZlAABrDe\/fE4YPkJKUMCMIBVl54B\/LyQegqXfsCsUeCKc4AbBgRgAKuueRTwr\/ITKGzaX6yRij3yOWD5BynDATCATZSeApwzGAAD2ET5KcAVgwEwgE1UnQLcMRgAA9hE7SnADAbAADb2IIsHWAAGsOEHWTzAAjCADT\/Ieg\/4i+el1FP41ANmjbRUDAE3DATAADZVMwTcMRAAA9hU3UfAv8gPkI60v1gjVXvlxuFNGAaAAWyyxAFOGQSAAWyy1AHOGASAAWyyzAEuGASAAWyywgEuGQSAAWyy0gFuGASAAWyyBsAABjCACcAUCjCDADCAjQZgAAPYMuCf5S+kJ+0v1khXAAYwgAFMACYAE4AJwAAGMIAJwAAGMAGYAAxgABOAAQxgABOACcAEYLoa8E\/yF9KT9hdrpCsAAxjAACYAUyjADYMAMIBN1gAYwAAGMAGYQgEuGQSAAWyy0gEuGASAAWyywgHOGASAAWyyzAFOGQSAAWyy1AFOGASAAWyy5P5\/8P2j\/A3pSPuLNVK1V24+AO4YCIABbKpuCLhhIAAGsKmaT4BfPy+lnsKnHjBrpKVyCDhnIESmyoeAUwZCZKr0I2CPmKEQ2XmrdfMQcMtgiEzUngJcMRgiE1WnAPMgi8jQA6z\/Af5B3hRLPRGpL\/0MsEfMcIiUNzT7EHDDgIhU15wB\/KyQeiJSW3EOcMqAiFSXPgrYI2ZIREp76PUU4JpBEamsvgRwzqCIVJZfAjhmUEQqi58E7BG3DItIVe0pq48BLhkYkarKiwF\/\/\/pZIvVEpKbkYsAeccfQiFTUPeb0HOCSwRGpqJwCOGZw66f9xRoFKR4N2CNuGR6AARy09pzRpwDnDBDAAA5afg3giAECGMBBiyYD9ogrhghgAAepesrnJYBTBglgAAcpvRownwkDGMC6PvudAjhjoAAG8KplswH+Tt5IS0epp2XT\/mKNVslZi2YD7BEXDBbArNEqFZe6HAM4ZrAAZo1WKZ4dsEdcMVwA06JVY0yOBcwpDGBScvqOBswpDGDWSM\/pOxUwpzCAScHpOwkwpzCAScfpew1gTmEAU+DTdzJgPhcGMIX53HdOwPzpLADTin\/qalbArm9fPculnuZL+4s1mr38GoNXAfaIOxYBwDSp7lp\/cwBOWQgA06TS4IA94prFADCNqp7D3lyAI+nIogCYLspZidQA5oEWgGm9B1eLAPaIGxYHwHS2Zk5zcwOOuUoDmM5enWO1gLlKA5jWuTovBpirNIBp+avzooBbuSZIR6mncWl\/sUaTchZiM4A94gMLB2C677CUs8UAe8QViwfgnVcuaWxpwJHUsogA3mlu70dmAfN+GMC8713W1+KAeT8MYN73GgfsERcsKoB3UrGWq9UAe8Q1iwvgjVetaWptwDzUAjAPrawCHiDmoRaAt\/jQKlrb0+qAPeIExADeGN4khKUggF3fyDcs9UQbKAnlKBhgjzhj8cl4WUhDQQGDmMBrHDCICbzGAYOYwGscMIgJvMYBg5jAaxwwiAm8xgG\/R3wriG97IgVlWp2oBewRJ9KRDUSBcnsv0WxENWAQE3iNA3Z9\/eo2klqpJ1oht9ciCzZMAB4grtlctHCVFbymAA8gF2wyWqjCmgdzgD3ig3Rkw9FMub10sGjBJGCPOOZ9Mc30fje26sAs4MH74opNSHt4v7s5wFypaW9X5k0Cvkf8Uq7UL28bqSc6k9sj8Vb2\/WYADyDn0pGNSg9yeyLf2n7fHGBOY9r6qbt5wJzGtOVTdzeAXV+9vI2kWuppV7k1j7a+vzcPeAA5lTo29uZza5zuZV\/vBvAAci4d2eiby61pvrf9vDvAg2t1wabfTMUerssA\/hxyLFUAMJtbu3jPe3jXgIEMXAADmYALYIWQCx52qXk4VQAXwFMfdmV8\/BTs46Bsrw+nALzM58hcr9e5JqfsOQAveSq7z5JbsM1W62fKaQvg9fpS3pdJpdRJPY2q87PjvS2AVWBO\/IZswflorZ9Rwp4BsPaTOZdq0N7PIOekBbBl0KlUSM0OwDb+e+VBFIA3DdqdSpXxK3frv4ccsAAG9XsIpT\/FOmUPnD6crGAFMI18OOZwZx7QB+DNTFfy4a9V+q+R+a\/Jwybl\/Qdr4yHpjs2gMAAAAABJRU5ErkJggg==","width":14}
%---
%[text:image:433f]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADoElEQVR42rWVfUzUdRzHrVVzNtetGs1lxNxckqU5l6tGy1YstubGTEROOCSaMRVFm49LI3SuWTrcbAqUPJ0lBXoIJpLIpdIxAe\/kWQi4446Hu4uHOx7kQX31+f2ktTbmUM8\/3rt9f7\/P9\/1+\/96fz32\/04BpjxL\/W7z35WKDoF+QKND4XCBo1yJujnlp6Kgi9Jtgu6xDfSrw9vYF3LozwthtLwMjbk5cPoY8MwoCfCKwZOtr3L4zzvC4m4ExB0PjTtp6LGzXxyHvkgWahxJYvOVV+YJRIXbRN9KMc+ga7uEa+kdbKTAfJzjxHa\/UrHlggTcSXmH0lkd133Ozns7Bcto852nxFNI9VIXDW8GBgs1InVGw9L4FXo+fy+BY5133w2bsA5do6S+kofcnLO6j8nuSjsEyTG16IpNDkPoMgWbKAvPXz6F35AauYYtKpLhv6sul9u90qlyHMXXt5VLHLllnYPOWkm1KImjHQq\/sS5iSwLy4AImiAsfAFazeYpr7TlPfo1fdX+0+wJXO3Vy0b+KcNYYS2zYRyqWyI4+N6RHIXqtg6T0F5q71F2cltHrOifNTKvl1dyqVzkP82ZWE0bGVYlscha3RnGqO4ueG1ZRYv6XG9Rtn61J5f\/ebCIdBEDCpwJzYF1XXjb051PVkCnmKSm7q2ifR7OBC+wZxv4b8v3T8ciMSfZ2W49WrSK+OpdSahqW7mM1ZOoQncVKBl2NmqflWu9Mwu45Q4fxuIvedlNg3UmT9lIKWaPKa7rrPrIkg1RLOkcowDpV\/Qsq19Xz+QxjCM7nA7OgX1GZWOA9S3rWfss6v+MOxTcjjKbLFUjARzcnG1WTXavnx+iqOVq0k+eoKNuV9QOAGf4TDIJg8olmRz4vjJCHeo0ZSat\/C7+3r1Kb+S57T+F80x8wr2XdxGe\/umYfstQru3WQ\/7bPSyC\/USbkgxOdtn3G2LZr8Fp0aS444V8jThTzFHE5U6lv4x\/h5ZN\/UxvS5cI1KqjhWiM9I3qebdfwqDVUyz55wvjM\/mPnxLyH1GYKp\/9E0YTOFVIdBpkSJI7cpUnV9ol5LZm0E30vWH+4NROqMgvs\/KmYuf1p1q+SsOFaIs4RYiSQqZQl+Wo1Hah78sJsROl3NOEsmJENGUInj66IQFiTMRt4lCx7uuJ6+7Cl19NJktg+blvPR\/kDkmVHgmwvnyY+f4GBZKHH6IJ5ZMaNd1r69Mh8Pecwg6BckCnx\/6T8K\/AN7hFpQI7w0ngAAAABJRU5ErkJggg==","width":24}
%---
%[text:image:1d94]
%   data: {"align":"baseline","height":24,"src":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAYCAYAAAARfGZ1AAADYklEQVR42r3U2U8TQRwH8PkTfDH6olFjjDHRJ\/XBROOBChpDJKgIIipCochdrlYsWmg5aougIghK5BDkaKFYBVp6ASoq1guMMQHFhkTAUBCRQPnanaxGYJWaoJt8d+dh85nf\/GZnSb1Ga\/sXAUAIO1jQ6\/\/gqrqGBcdZk5CqGvWC4Q6Hgz5Zk5DbldW2hYInJyfpmDUJKSmrcAlf11j0M2vvlWBpTSMWV+lpVtSpsfb+TXybmKDvsiYhN4pLfuIKZc6ccOEr1RqsKjBgvbgZq5UmLCk20AnGx8cxPT0N1iSkoPDmX1e+XHUXa\/KM2OJfha2Hy+kEzArGxsZoe1iTkLz8Qpdwr+ZcnNBdpNlQV0ur3cTX0AmYFTD46OgXTE1NgTUJyb1yzaW2ZBoTUGCIpjmrk2JZZROdgFkB0yJmD+z2EbqprEmIIjvXpcobWoJhVoVBL5TCKMyAKUkOQ5ICLYkKGOKyoI9JR1O0FDqhHCp+Ckp9BYUkS650CWfgllAJugvLMWgxYLDViME2E4bazRh6YMHQQwuGOzvwRq3FnSAR8j35ILIM+bxt6dW1Qxeaiq7rLMyBDz97DJulDbVhYnTILiFnXxCIJC39j5UzsIEvw\/vaOgyYWzhxu\/UpPppbcTtYiHaJAp1ZlyHfcwJEnCL5Lf6mUutshRS9NWoMmPScuN36BH1mC8qCEmFKzqAwE+nOYyBnk8WcuPVqBVoTFOir12DAqOPEmVZ8MJlxKzBhBvwwLRsp2w6DJCaJbFwVP84qwtCTR7A\/fwr7C2dedjrzDCOvrBh5bUWfyYQXd1S47hcJ47nMGXCmRwBS9\/gNE0Fcwhy8OVzq\/LRkaIxMhTb8AjTOTVKFJqOaJ0Slc\/llgXFQugfSvpaeip0By9z9keLh6xBsPrCIREbFzMCZf0NThARfe3r+mJHuLmTuDcD9+AssrIR0rx9S9\/sjKiK6nx6isDMRtl9h5vg2OCsd7Xo1b0qDBbRaBpbsPorzHn54+7obrEkIL4Rvm51angifH7TOm3J+HIXPu\/lA6HbIEcrj9\/8wKM7cZqciMB6fGrXzpiQkFuJdRyDa4T0ctXH\/otkOJ37FMwTFx6NQdCwcBb5huObDx+UjPOQcCoLCy7mRB08iwzMAou3eUHqffsdlMPkOpYgJvtYJRT0AAAAASUVORK5CYII=","width":23}
%---
