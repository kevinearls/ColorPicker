# Module 2 Short Answer Questions
Kevin Earls
17 December 2023

a) 0…5 and 0..<5 are two types of ____________. How are they different?
    The first range, 0...5 includes the 5, while the second does not.  (i.e. it goes from 0 through 4, but not 5.)

b) Describe type inference in Swift and give an example.
  Type inference is where the compiler can infer the type of a variable, so it is not necessary to explicitly declare it.  If you have a declaration like 'var name = "kevin"' the compiler know that name is a string so it is not necessary to give the type.

c) List three advantages of Playgrounds.
  1. It makes it easier to learn coding.  You don't have to create a whole project, you can just write code
  2. You can see results immediately after typing
  3. It makes it easy to experiment with code.

d) When does the execution of a while loop end?
        When the boolean clause after the while evaluates to false.

e) True or False: Tuples in Swift can contain values of different data types.
    True
f) List three data types you have used in Swift.
    Int, Double, Bool
g) To execute alternative code when the condition of an if statement is not met, you can use what clause?
    An else clause
h) What is the third element of the array nums defined below?
let nums = [5, 0, 44, 20, 1].
     The third element, i.e. nums[2] is 44 as arrays are 0 based.  (nums[3] is 20)

i) An ____________ is a unit of code that resolves to a single value.
    function

j) Define two ways to unwrap optionals in Swift.
  With the nil-coalescing operator (let number = number ?? 0) or forced/unconditional unwrapping - number!
k) True or False: The condition in an if statement must be true or false.
    True
l) Arrays in Swift are ____________ indexed.
    zero
m) An unordered collection of unique values of the same type is a _____________.
    Set


## Above and Beyond
The output I got when I ran this was

Area: square1 - 16 square2 - 25
Area: rectangle1 - 20 rectangle2 - 20

This is because since squares are structs, the statement "var square2 = square1" makes a copy of square1, so square2 is a new and separate struct.  However, since rectangle is a class, "var rectangle2 = rectangle1" means rectangle2 is just another way of referencing rectangle1, i.e. there is only 1 rectangle with two references to it.  So "rectangle2.length = 5" changes the only existing object.

