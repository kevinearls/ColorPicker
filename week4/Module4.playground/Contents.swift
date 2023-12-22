import Foundation

// Part 2 - Programming assignment.

//This module’s programming assignment will be in Playgrounds. Follow the same steps for setting your project as you did in Module 3.
//a) In the assignment for Module 3, part D asked you to write a function that would compute the average of an array of Int. Using that function and the array created in part A, create two overloaded functions of the function average.

let numbers = Array(0...20)
func average(values: [Int]?) -> Int{
  if let values {
    var total = 0
    for number in values {
      total += number
    }
    let average = total / values.count
    return average
  } else {
    return 0
  }
}

func average(values: [Int]?) -> Double {
  if let values {
    var total = 0
    for number in values {
      total += number
    }
    let average:Double  = Double(total) / Double(values.count)
    return average
  } else {
    return 0.0
  }
}
let intAverage:Int = average(values: numbers)
let doubleAverage:Double = average(values: [8, 1])

//b) Create an enum called Animal that has at least five animals. Next, make a function called theSoundMadeBy that has a parameter of type Animal. This function should output the sound that the animal makes. For example, if the Animal pass is a cow, the function should output, “A cow goes moooo.” Hint: Do not use if statements to complete this section.
//Call the function twice, sending a different Animal each time.

enum Animal {
  case cow
  case dog
  case cat
  case snake
  case pig
}

func theSoundMadeBy(animal: Animal) {
  switch animal {
  case .pig:
    print("A pig goes oink")
  case .cow:
    print("A cow goes moooo.")
  case .dog:
    print("A dog goes bow-wow.")
  case .cat:
    print("A cat goes meow.")
  case .snake:
    print("A snake goes hiss.")
  }
}

theSoundMadeBy(animal: .pig)
theSoundMadeBy(animal: .cow)

//c) This question will have you creating multiple functions that will require you to use closures and collections. First, you will do some setup.
//Create an array of Int called nums with the values of 0 to 100.
//Create an array of Int? called numsWithNil with the following values:
//79, nil, 80, nil, 90, nil, 100, 72
//Create an array of Int called numsBy2 with values starting at 2 through 100, by 2.
//Create an array of Int called numsBy4 with values starting at 2 through 100, by 4.
//You can set the values of the arrays above using whatever method you find the easiest. In previous modules, you were introduced to ranges and sequences in Swift. Leveraging those in the Array initializer will allow you to create the requested arrays in a single line. Don’t let the last two break your stride
//.
//- Create a function called evenNumbersArray that takes a parameter of [Int] (array of Int) and returns [Int]. The array of Int returned should contain all the even numbers in the array passed. Call the function passing the nums array and print the output.
//- Create a function called sumOfArray that takes a parameter of [Int?] and returns an Int. The function should return the sum of the array values passed that are not nil. Call the function passing the numsWithNil array, and print out the results.
//- Create a function called commonElementsSet that takes two parameters of [Int] and returns a Set<Int> (set of Int.) The function will return a Set<Int> of the values in both arrays.
//Call the function commonElementsSet passing the arrays numsBy2, numsBy4, and print out the results.

let nums = Array(0...20)
let numsWithNil = [79, nil, 80, nil, 90, nil, 100, 72]
let numsBy2 = Array(stride(from: 2, through: 100, by: 2))
let numsBy4 = Array(stride(from: 2, through: 100, by: 4))

func evenNumbersArray(numbers: [Int]) -> [Int] {
  numbers.filter{ $0 % 2 == 0 }
}
print("Even numbers array: \(evenNumbersArray(numbers: nums))")

func sumOfArray(numbers: [Int?]) -> Int {
  numbers.compactMap { number in
    number
  }.reduce(0) { partialResult, number in
    partialResult + number
  }
}
print("Sum of numsWithNil: \(sumOfArray(numbers: numsWithNil))")

func commonElementsSet(first: [Int], second: [Int]) -> Set<Int> {
  var result: Set<Int> = []

  for number in first {
    if second.contains(number) {
      result.insert(number)
    }
  }

  return result
}
print("Common elements: \(commonElementsSet(first: numsBy2, second: numsBy4).sorted())")

//d) Create a struct called Square that has a stored property called sideLength and a computed property called area. Create an instance of Square and print out the area.

struct Square {
  let sideLength: Int
  var area: Int {
    sideLength * sideLength
  }
}
let square = Square(sideLength: 4)
print("Area of square: \(square.area)")

//Part 3 - Above and Beyond
//
//Note: you don’t need to complete Above and Beyond sections in order to pass the homework. If you need to, you can stop here. But if you have the time and bandwidth, the A&B sections will let you challenge yourself further.
//Create a protocol called Shape with a calculateArea() -> Double method. Create two structs called Circle and Rectangle that conform to the protocol Shape. Both Circle and Rectangle should have appropriate stored properties for calculating the area.

protocol Shape {
  func calculateArea() -> Double
}

struct Circle: Shape {
  let radius: Double

  func calculateArea() -> Double {
    .pi * radius * radius
  }
}

struct Rectangle: Shape {
  let length: Int
  let height: Int

  func calculateArea() -> Double {
    Double(length) * Double(height)
  }
}

//Create instances of Circle and Rectangle and print out the area for each.
let rectangle = Rectangle(length: 3, height: 11)
let circle = Circle(radius: 7)
print("Rectangle Area: \(rectangle.calculateArea())")
print("Circle area: \(circle.calculateArea())")

//Next, extend the protocol Shape to add a new method called calculateVolume() -> Double.
//Finally, create a struct called Sphere that conforms to Shape. Sphere should have appropriate stored properties for calculating area and volume.

extension Shape {
  func calculateVolume() -> Double  {
    return 0.0
  }
}

//Create an instance of Sphere and print out the area and volume.
struct Sphere: Shape {
  let radius: Double

  func calculateArea() -> Double {
    .pi * radius * radius
  }

  func calculateVolume() -> Double {
    4/3 * .pi * radius * radius * radius
  }
}

let sphere = Sphere(radius: 3)
print("Sphere volume: \(sphere.calculateVolume())")


