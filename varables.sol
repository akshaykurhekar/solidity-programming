// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// There are 3 types of variables in Solidity

// ======================LocalVariableExample============================

// declared inside a function
// not stored on the blockchain

contract LocalVariableExample {

    function sum(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result; // Declaring a local variable

        result = a + b; // Assigning a value to the local variable

        return result; // Returning the local variable
    }

    // function add() public pure {
    //     uint aa = result;
    // }
}


// ========================StateVariableExample===========================

// State variables are stored on the blockchain.
// state - declared outside a function
// stored on the blockchain

contract StateVariableExample {

    uint256 myStateVariable; // Declaring a state variable

    function setStateVariable(uint256 newValue) public {
        myStateVariable = newValue; // Modifying the state variable
    }

    function getStateVariable() public view returns (uint256) {
        return myStateVariable; // Accessing the state variable
    }
}


// ======================GlobalVariableExample=======================

// global (provides information about the blockchain)

contract GlobalVariableExample {
    function getBlockNumber() public view returns (address) {
        
        return msg.sender; // Accessing the global variable 'block.number'
    }

    function  getTimestamp() payable public returns (uint) {
        return msg.value; // Accessing the global variable 'block.timestamp'
    }
}


