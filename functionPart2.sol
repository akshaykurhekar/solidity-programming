// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FunctionPart2 {

 // pure and view
 
 // function visibility
 // public - any contract and account can call
 // private - only inside the contract that defines the function
 // internal- only inside contract that inherits an internal function
 // external - only other contracts and accounts can call 
    
    uint public stateVariable = 10;

    // not alowed to modify the state.
    function viewFunction(uint x) public view returns(uint) {
      return stateVariable + x;
    }
   
    // not alowed to modify or read from the state.
   function pureFunction(uint a, uint b) private pure returns (uint) {
    return a + b;
   }

   function helper() public pure returns(uint) {
    uint aa = pureFunction(10, 20);
    return aa;
   }

  }
