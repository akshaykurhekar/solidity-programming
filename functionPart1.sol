// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FunctionPart1 {
  
  // function are divided into some imp parts

  // 1. function name - Y
  // 2. function parameter - Y
  // 3. function visibility - N
  // 4. function return statement - Y
  // 5. function body - Y

  address public caller;
    // Basic function
    function funName() public {
      // body
      caller = msg.sender;
    }

  uint aa;
  bool ff;  

    // function with parameter
    function funWithPrams(uint value, bool flag) public {
       aa = value;
       ff = flag;
    }
      
    // function with returnType1
    function funWithReturnT1(uint ee,  address cc, bool bb) public pure returns(uint, bool, address){

      return (ee, bb, cc);
    }
    
    // function with returnType2
    function funWithReturnT2(uint ee,  address cc, bool bb) public pure returns(uint x, bool y, address z){

      x=ee;
      y=bb;
      z=cc;
    }

  }
