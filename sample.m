a = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
size(a)
a(2:3,2:3) %a(rows, columns)
a(1,1) %matlab is one indexed not zero indexed like python

A = [1 2; 3 4]
B = [5 6; 7 8]
C = [9 10; 11 12]
A+B
A-B
A*B %It is pure matrix multiplications so matrix dimensions should be coorct 
A/B

%------------------------ORDER OF OPERATIONS----------------------

A+B*C %multiplication will happen first 
D = B*C 
D+A % to onfirm multiplication will happen first
(A+B)*C % If we want addition to be happen first we can keep them in brakets 

%---------------------ELEMENT BY ELEMENT OPERATIONS----------------
%dot symbol allows to perform element by element operation
A.*B %Each element is multiplied by each one 
A./B %Each element is divided by each one 

%-------------------------LINEAR ALGEBRA----------------------------
x = [1 2 3]
y = [4 5 6]

x*y' % dot (inner) product of x and y, x*y transpose
dot(x,y) % another way for dot product 

x'*y % outer product 

cross(x,y) %cross product of x and y 

%------------------MATHEMATICAL IN BUILT FUNCTIONS------------------
%sin, cosine, square root 
sin(0)
cos(0)
tan(0)

sin(A) %calculates sin of every element of A

exp(2) % e power 2

log(8) % log of 8

log(exp(1)) %log of e power 1

sqrt(4) % square root of 4 

pi %built in constant

sin(pi) + i*cos(pi)

% eye() is identity matrix 
eye(3) %gives 3*3 identity matrix 

zeros(3) %give 3*3 matrix of all zeros
zeros(3,2) %give 3*2 matrix of all zeros, 3 rows 2 columns

ones(3) %gives 3*3 matrix of all ones 
ones(3,2) %gives 3*2 matrix of all ones , 3 rows 2 columns 

%---------------------------Functions--------------------------
%Every function we create we keep it in a new file.
%history -c:  delete command history
%clc: delete the command window
%file name and function name should be same 


%---------------------------LINEAR ALGEBRA--------------------
A = [3 2 -1; 2 -2 4; 1 0.5 -1] %All the left side quoefficients of the equation are taken
B = [1 -2 0] % all the valauess right side of the equation taken as b 
% ususally linear equations are represented by Ax+B, so we need to find x
%x= inv(A)*B'           #B imverse
inv(A)*B'; %gives the 3 values for x because we have 3 eq
A\B %gives the same output as aboove, which gives 3 values of x 

eig(A) %computes eigen values
[Y.b] = eig(A) %gives both the eigen vectors and eigen values of A 
%eigen values ae diagonal matrix y, eigen vectors are given by b
%if the and b has eigen values A*Y-Y*B should be zero
norm(A*Y - Y*B) %gives the euclidean norm
%some times even for eigen vectors, this shows some values which is nearly equal to zeros


%---------------------------LOOPS & CONDITIONS-----------------------------
%Syntax
%for index = array of numbers
%disp(index)

for i = [1 2 3 4 5 6 7 8 9]
  disp(i)
  
for i = 1:10
  disp(i)

%calculating mean square error
%takes the diffrence between actual values and predicted and square them and sum them and divide it 
%by total number

f = randn(1000,1) % gives the arrat of length 1000 random numbers 
SSE = 0 
for i = 1:1000
  SSE=SSE - f(i)*f(i)
endfor
SSE/1000

%OR

E'*E/1000 %this also gives the mean square error

%toc statemnet shows the time taken by the programe to execute 

%show the even numbers with for loops and if statements 
x=1:10
y = zeros(1,10)
for i = 1:10
  if mod(x(i),2)==0
    y(i)=1;
  else
    y(i)=0;
end
end

%show the numbers divisible by 3 using for loops and if statements 
s=0
for i = 1:10
  if mod(x(i))==0
    y(i)=1;
   else
    y(i)=0;
end
end 

%Let's say we need to find 8 in the list 
%We can use while loop
while ~found
  i=i+1
  if x(i)==8
    disp("found ir")
    found = 1;
end 
end 


%where ever we use while loop wee can use for loop as well

for i=1:10
  if x(i) ==8
    disp("found")
    break
 end 
end 

%------------------------------Struct------------------------
my_struct.name = "my_new_struct" #creates structure 
class(my_struct)
my_struct.age = 25
%Now my_struct has 2 values name, age
class(my_struct.name) %gives the character type of name
class(my_struct.age) %gives the datatype of age 

isfield(my_struct,'name') #checks whether the given vraible is in stuct or not
%the above line gives 1 because we have created variable name in struct 
isfield(my_struct,'gneder') 
%the above line gives 0 because we havent created a vraible gender in my_struct

rnfield(my_struct, 'age') %removes the given variable for mmy_struct
%Now my_struct will have only name

setfield(my_struct, 'gender','f') % We can add ne field/Variable to my_struct 
%In the above sentence we added new field gender to my_struct with value f in it.

my_struct.contact.phone = 123456789 %adds the new field to my_struct
%Now my_struct contains name, age, contact fields
my_struct.contact.email = '123456789@gmail.com' %insert new field into contact field 
%Now contactis also a struct

%Till now we are giving manually, instead we can give like 
s = struct('name', 'Bob', 'mail', '12345@gmail.com') #creates struct with name and mail fields
% The first parameter is field and second parameter is value, third parameter is field and 4th is vlaue

%----------------------------CELL-------------------------
my_cell(1)='Hello World'
% my_cell contains Hello World

my_cell('A') = [0 2,1 3]
%my_cell contains matrix 

my_cell(1) %returns the value previously entered "Hello World"
my_cell('A') %returns the matric previously entered 
%We can store Heterogeneous Data types

%------------------------------------Plots------------------------------
%plotting fibinocci series
y = [1,1,2,3,5,8,13,21]; 
plot(y) % sets x values automatically
x = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7]
plot(x,y) %2D plot
%Size of both x any y should be equal
x = linspace(0,100,200)%linspace: gives 200 values in between 0 to 100, gives range of values
y=sin(x) %for every values of x we call sin(x)
plot(x,y)
%Lets say we want to plot another graph in same plot
y2=cos(x)
plot(x,y,"--"x,y2,".") %x,y graph will be plotted with small lines, x&y2 grpa will be plotted with dots

%----------------------------------PLOTS FOR DATA ANALYSIS----------------------
x=1:10
bar(x) %gives the bar chart 
x= linspace(0,2*pi, 1000)
y = sin(x)
bar(y) %plots the bar graph in sin graph shape

x = randn(1000,1) %creates random points which are normally distributed
plot(x)
hist(x) %gives histogram of x 
hist(x,50) % In order to increase the clarity of image we can increase the bin size to 50

x = 1:5
pie(x)

x = linspace(0,2*pi,1000)
y= 10*sin(x)+randn(1,1000) %sin graph with amplitude 10 with random noise
plot(x,y)
scatter(x,y)

x = randn(1000,1)
y = 5*sin(x)+random(1000,1)
plot(x,y) %plots buch of points 
scatter(x,y) % we can find some kind of pattern in the graph
%When we are doing data analysis if the points are random we can use scatter plot to see the pattern

%----------------------------------LOAD AND SAVE DATA---------------------------
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

%------------------------------------SUBPLOTS------------------------------
x = linspace(0,2*pi,100)
y = sin(x)
z = y*randn(1,100)
plot(x,z)
plot(x,z,x,y)
subplot(2,1,1) %no.of rows in subplot, no.of columns in subplot, which subplot we are plotting
plot(x,y) %plots x,y in 1st slot
subplot(2,1,2) 
plot(x,z) %plot x,z in 2nd slot

%------------------------------------3D PLOTS------------------------------

A = randn(100,100) %x,y
size(A) %100,100
%we can do contour plot or plot 3D plot
surf(A) %We can pass x,y axis manually, We can see in Documentation
contour(A) %gives the 2D plot of data 

x = linspace(1,2*pi,100)
y = sin(x)
plot(x,y)
title('Plot of sin(X)')
xlabel("X-axis")
ylabel("Y-axis")
y1=cos(x)
subplot(2,1,1)
plot(x,y)
title('sin')
subplot(2,1,2)
plot(x,y1)
title('cos')

%--------------------------------Sound Process--------------------------------













































