# Coding Rules

This file collects coding rules which should or shall be followed.

## CDR-1 Source code shall be formatted with  "clang-format  -i  --style=Google". No manual formatting allowed. Mass reformatting of existing code is forbidden.

The reason is to have a standard which is easy to apply and follow.

##CDR-2 Variable names shall not carry the type.

The reason is that the type of a variable may change and then also the name would have to be changed at many locations. The type of a vairable is easily visible in the IDE.

## CDR-3 variable names and Function Names should be lowerCase with camelCase to seperate words.

The names ensure readability. This means that all symbols start with a lower case. 

 
## CDR-4 class names should be upper case

This allowed to grep for class names. 

## CDR-5 Code should be written if possible in C++. All code shall be compiled with the C++ compiler with preprocessor.

The goal is to make use of the C++ type system as much as possible. 

### CDR-5b the use of Macros is forbiddne

The usage of the preprocessor for macros shall not be used - except for #ifdef of the header file. 


 
## CDR-6 Other libraries, including STL shall not be used
There should be no external dependnecies for an Operating System. The STL cannot be used as it's not qualified.


## CDR-7 Usage of assembly language should be minimized
If assmbly is used it should be part of a CPP File. There shall be also a unit test for this Assmbly functions -except it's behaviour is obvious.



## CDR-8 no code shall be written without a link to the Architecture and at least one Requirement
This prevents pre mature coding and ensures compliance to ISO26262. Code which is not required is not needed and should not exist.

##CDR-9 Each function shall have a unit test


## CDR-10 Memory shall be statically allocated, dynamic memory allocation on the heap is not allowed, there shall be only one global data symbol
Danymic memory allocation is a risk for safety critical code - what if there is no ram left? The memory shall be statically allocated for the complete SoC.

## CDR-11 Recursion is not allowed, stack usage shall be limited and monitored for each function
Recursions have andefined stack usage. The stack usage of each function shall be known statically and shall be allocated at compile time.

## CDR-12 Architecture shall be drawn with UML
This is a design decision how the architecture should be created. Code shall be generated from the UML diagram to produce header files. 

## CDR-13 Usage of pointers should be avoided. APIs shall use  references where possible.
This is because pointers may lead to invalid memory access and null pointers. The ownership of references is always clear.  

## CDR-14 usage of auto is forbidden
This is beause we want the code to explicitly express the type of a variable.

## CDR-15 usage of exceptions are forbidden, every function should have only one return point 
We want to have all functions to have only one exit. Exceptions generate more code with unexpected side effects are possible. Code expected to be executed may not be executed. All error handling should be explicit.

## CDR-16 void pointer are not to be used
Void pointer are generally not needed in a clean design without legacy code. They have by prinicple an undefined type which accidentally would have to match.

## CDR-17 usage of runtime time type information is forbidden
This also forbids dynamic casts. This also reduces the code/data size. 

## CDR-18 each .cpp File shall have a Unit test
All code needs at least one test, which checks the functionallity.


