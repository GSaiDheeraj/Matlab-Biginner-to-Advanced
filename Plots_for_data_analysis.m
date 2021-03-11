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