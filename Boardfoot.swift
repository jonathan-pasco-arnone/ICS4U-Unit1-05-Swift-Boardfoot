//
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-11-24
//  Version 1.0
//  Copyright (c) 2021 MTHS. All rights reserved.
//
// This program calculates the length of a board.

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

func lengthCalculator(height: Double, width: Double) -> Double {
    // Varibales.
    let oneBoardfoot: Double = 144

    // Calulations.
    let length: Double = oneBoardfoot / (height * width)

    return length
}

do {
    // Variables.
    let heightStorage: Double
    let widthStorage: Double
    let lengthStorage: Double

    // Inputs
    print("Please enter the height: ")
    if let heightInput: Double = Double(readLine()!) {
        heightStorage = heightInput
    } else {
        throw MyError.invalidInteger("Error")
    }
    print("Please enter the width: ")
    if let widthInput: Double = Double(readLine()!) {
        widthStorage = widthInput
    } else {
        throw MyError.invalidInteger("Error")
    }

    // Calls the function to be tested for errors.
    lengthStorage = lengthCalculator(
        height: heightStorage, width: widthStorage)

    // Outputs.
    print("The wood should be ", lengthStorage, " inch(es) long")

} catch {
    print("That was an invalid input")
}
print("\nDone.")
