// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

// The operators || and && apply the common short-circuiting rules. 
// This means that in the expression f(x) || g(y), if f(x) evaluates to true,
// g(y) will not be evaluated even if it may have side-effects.

contract BooleanExample {
  
  // bool: The possible values are constants true and false.
    bool isActivated;

    function activate() public {
        isActivated = true;
    }

    function deactivate() public {
        isActivated = false;
    }

    function getStatus() public view returns (bool) {
        return isActivated;
    }
}
