// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;


// Constant Variables:
// Constant variables are evaluated at compile-time and have their values hardcoded
//  into the bytecode of the contract. They are useful when you have values that are
//   known in advance and will never change.

contract ConstantExample {
    uint constant public MY_CONSTANT = 42; // Declaring a constant variable

    function getConstantValue() public pure returns (uint) {
        return MY_CONSTANT; // Accessing the constant variable
    }
}