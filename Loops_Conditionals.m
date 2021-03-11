%---------------------------LOOPS & CONDITIONS-----------------------------
%Syntax
%for index = array of numbers
%disp(index)

for i = [1 2 3 4 5 6 7 8 9]
  disp(i)
end 
for i = 1:10
  disp(i)
end   
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