// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {

// what is error?
    
// Types of error?
    // Compilation error
    // Runtime error
    // Gas limit error
    // out-of-gas-error
    // custom error

// Who to handle error in solidity?
    // using 
    // 1. Require(condation, comment)
    // 2. Revert("comment")
    // 3. Assert(condation) 
    // 4. custom error - error & revert

      function testRequire(uint value) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(value > 10, "Input must be greater than 10"); // it will give comment only on false condition.
    }

    function testRevert(uint _i,uint _b) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
            }
        if(_b < 100){
            revert("Pls check your input 'B' should be greater then 100.");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0); // it will revert in false condation.
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }

}