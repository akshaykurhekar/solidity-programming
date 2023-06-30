// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Sample {

    // datatypes 
    // int, string, bool, address, arrays, structs, mappings, enums
    
    uint256 public positiveNumber = 43; // 255
    int256 public negativeNumber = -90;

    // uint8 -> 00000000 - 11111111 
    // rang -> int8, int16, int32, int64 ..... int256
    // rang -> uint8, uint16, uint32, uint64 ..... uint256

    function increment() public {
        positiveNumber++;
    }

    function decrement() public {
        negativeNumber--;
    }

}