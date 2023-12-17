import Foundation

// a) Create an array of Int called nums with values 0 through 20. Iterate over the Array and print the even numbers.
print("----- a -----")
let nums = Array(0...20)  // or I could have done let nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
for number in nums where number % 2 == 0 {
  print(number)
}

// b) In your Playground, define the following String:
print("\n----- b -----")
let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
//Iterate over sentence counting the vowels (a, e, i, o, u), ignoring the case.

var vowelCount = 0
var vowels = "aeiou"
for letter in sentence.lowercased() where vowels.contains(letter) {
  // if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {  <- another way to do this
  vowelCount += 1
  // }
}
print("Got \(vowelCount) vowels.")

//c) Create two arrays of Int with the values of 0 through 4. Use a nested for loop to print a mini multiplication table. The output, which should be multiple lines, should be in the following format:
//0 * 0 = 0
//The format follows the number from the first array, space, followed by the character *, space,  followed by the number from the second array, space,  followed by =, space, followed by the result of the number from the first array multiplied by the number from the second array (just like the example above). There are a couple of ways to achieve this, but String Interpolation is the easiest.
print("\n----- c -----")

let one = [0, 1, 2 ,3, 4]
let other = Array(0...4)
for first in one {
  for second in other {
    print("\(first) * \(second) = \(first * second)")
  }
}

//d) Write a function called average that takes an optional array of Int. If the array is not nil, calculate the average of the array's values and print:
//“The average of the values in the array is <average>.”
//Where <average> is the calculated average. If the array is nil, print:
//“The array is nil. Calculating the average is impossible.”
//Note: the average is calculated by summing the values in the array and dividing by the number of elements.
//Call this function two times. First, pass in the nums array from part A and second by passing an optional array of Int.

print("\n----- d -----")
func average(values: [Int]?) {
  if let values = values {
    var total = 0
    for number in values {
      total += number
    }
    let average = total / values.count
    print("The average of the values in the array is \(average)")
  } else {
    print("The array is nil. Calculating the average is impossible.")
  }
}

average(values: nums)
let optionalArray: [Int]? = [2, 4, 6, 8]
average(values: optionalArray)
// I don't think this is in the assignment, but just to make sure things work
let nilArray: [Int]? = nil
average(values: nilArray)

//e) Create a struct called Person with the properties firstName, lastName, and age. Choose appropriate data types for the properties. Include a method on Person called details that prints the values stored in the properties in the following format:
// Name: <firstName> <lastName>, Age: <age>
//Create an instance of Person called person. Pass your first name, last name, and age for the properties. Finally, call the method details.
print("\n----- e -----")

struct Person {
  let firstName: String
  let lastName: String
  let age: Int

  func details() {
    print("Name: \(firstName) \(lastName), Age: \(age)")
  }
}

let me = Person(firstName: "Kevin", lastName: "Earls", age: 63)
me.details()

//f) Create a class called Student with two properties: person of type Person and grades, an array of Int. The class must have a method called calculateAverageGrade that takes no parameters and returns a Double. Include a method called details that prints the values of the properties stored in Student along with the average grade in the following format:
// Name: <firstName> <lastName>, Age: <age>, GPA: <average grade>.
//Create an instance of Student called student passing in your first name, last name, age, and an array of five numbers: 94, 99, 81, 100, 79. Next call the details method to output the details of the student.
print("\n----- f -----")

class Student {
  let person: Person
  var grades: [Int]

  init(person: Person, grades:[Int] = []) {
    self.person = person
    self.grades = grades
  }

  func details() {
    var average:Double = 0.0
    var total = 0
    for grade in grades {
      total += grade
    }
    average = Double(total) / Double(grades.count)

    print("Name: \(person.firstName) \(person.lastName), Age: \(person.age), GPA: \(average)")
  }
}

var kevin = Student(person: me, grades: [94, 99, 81, 100, 79])
kevin.details()


