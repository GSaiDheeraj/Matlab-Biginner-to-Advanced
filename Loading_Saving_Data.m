%Lets see loading xlsx files
%1)xlsread 2)xlswrite
%most of the time we woek with csv file 
%1)csvread 2)csvwrite
A = csvread("example.csv")
B = eye(4)*5
csvwrite('another.csv', B)


A = [1 2; 3 4]
B = [5 6; 7 8]
save('my_workspace.mat') %saves work into .mat file in binary format
load('my_workspace.mat') %loads the entire workspace into the matlab 
C = [9,10;11,12]
%we can save the specific variables
save("AC.mat", 'A', 'C') %saves only A and C files