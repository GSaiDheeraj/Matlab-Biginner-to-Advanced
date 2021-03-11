%{
Data Types in Matlab
1)int8,16,32,64 
2)uint 8,16,32,64
3)single
4)double
5)logical
6)char
7)cell array
8)struct
9)function handle
10)user classes
11)java classes
%}
%------------------------------Struct------------------------
my_struct.name = "my_new_struct"
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

%----------------------------Cell-------------------------
my_cell(1)='Hello World'
% my_cell contains Hello World

my_cell(A) = [0 2,1 3]
%my_cell contains matrix 

my_cell(1) %retiurns the value previously entered "Hello World"
my_cell('A') %returns the matric previously entered 




