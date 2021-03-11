%-------------------------LINEAR ALGEBRA----------------------------
x = [1 2 3]
y = [4 5 6]

x*y' % dot (inner) product of x and y, x*y transpose
dot(x,y) % another way for dot product 

x'*y % outer product 

cross(x,y) %cross product of x and y 

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