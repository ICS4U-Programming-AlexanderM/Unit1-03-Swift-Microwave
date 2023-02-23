//  Created by Alexander Matheson
//  Created on 2023-Feb-22
//  Version 1.0
//  Copyright (c) 2023 Alexander Matheson. All rights reserved.
//
//  This program calculates the time it takes to microwave a meal.
import Foundation

// Declare variables
var strData = ""
var food = 0
var itemNumber = 0.0
var time = 0.0

// Enum for error checking
enum InputError: Error {
  case InvalidInput
}

// Input in separate function for error checking
func input() throws -> Int {
  print("What food are you microwaving? Enter 1 for pizza, 2 for sub, 3 for soup: ")
  strData = readLine()!
  guard let number = Int(strData.trimmingCharacters(in: CharacterSet.newlines)) else {
    throw InputError.InvalidInput
  }
  return number
}

// Input in separate function for error checking
func itemInput() throws -> Double {
  print("How many items are you microwaving. (Enter a number between 1 and 3)")
  strData = readLine()!
  guard let number2 = Double(strData.trimmingCharacters(in: CharacterSet.newlines)) else {
    throw InputError.InvalidInput
  }
  return number2
}

//Check Input
do {
  let food = try input()
  let item = try itemInput()
  //Check food and item number input
  if (item < 1 || item > 3) {
    print("Incorrect number of items.")
  } else if (food == 1) {
    //Math
    time = 45 * (1 + (item - 1.0) / 2.0)
    print("The required time is", time, "seconds.")
  } else if (food == 2) {
    //Math
    time = 60 * (1 + (item - 1.0) / 2.0)
    print("The required time is", time, "seconds.")
  } else if (food == 3) {
    //Math
    time = 105 * (1 + (item - 1.0) / 2.0)
    print("The required time is", time, "seconds.")
  } else {
    print("Invalid food input.")
  }
} catch InputError.InvalidInput {
  print("Error: Invalid input")
}
