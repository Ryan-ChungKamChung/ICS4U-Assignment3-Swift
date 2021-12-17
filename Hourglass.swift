//
//  Hourglass.swift
//
//  Created by Ryan Chung
//  Created on 2021-12-16
//  Version 1.0
//  Copyright (c) 2021 Ryan Chung. All rights reserved.
//
//  This program prints an hourglass in a recursive manner.
//

import Foundation

// The recursive function that produces the hourglass.
func hourglass(size: Int, offset: Int) {
    printHourglass(size: size, offset: offset)
    if size > 1 {
        hourglass(size: size - 1, offset: offset + 1)
        printHourglass(size: size, offset: offset)
    } else if size == 1 {
        printHourglass(size: size, offset: offset)
    }
}

// Prints out the hourglass line by line.
func printHourglass(size: Int, offset: Int) {
    print(String(repeating: " ", count: offset), terminator: "")
    print(String(repeating: "* ", count: size))
}

// Takes user input, validates it then calls hourglass()
print("Please enter the size of the hourglass: ", terminator: "")

// Makes sure the user input isn't nil.
guard let sizeString = readLine(), !sizeString.isEmpty else {
    print("Something went wrong.")
    exit(001)
}

// Tries to convert the user input into an Int.
if let size = Int(sizeString) {
    if size >= 1 {
        print("")
        hourglass(size: size, offset: 0)
    } else {
        print("Please enter an integer greater than one.")
    }
} else {
    print("Please enter an integer.")
}

print("\nDone.")
