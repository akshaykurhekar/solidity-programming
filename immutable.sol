// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// Immutable Variables:
// Immutable variables are evaluated and assigned their values at deployment time,
//  based on the constructor arguments or other immutable variables.
//  They are useful when you need a variable whose value is known at deployment
//   but can vary between different deployments of the contract.

contract ImmutableExample {
    uint256 public immutable myImmutableVariable; // Declaring an immutable variable
    address public immutable Owner; // Declaring an immutable variable

    constructor(uint256 initialValue){  
        // Assigning a value to the immutable variable at deployment
        myImmutableVariable = initialValue;
        Owner = msg.sender;
    }

    function getImmutableValue() public view returns (uint256) {
        return myImmutableVariable; // Accessing the immutable variable
    }
}

// Immutable: Let's say you have a contract that requires a specific address or value
//  to be set during deployment. For example, you might have a 
//  contract that deploys multiple instances and each instance needs 
//  a different owner address. In this case, you can use an immutable variable
//   to assign the owner address during deployment, allowing each instance to 
//   have a different owner while still being fixed within that instance.

// Both constant and immutable variables provide ways to assign fixed values
//  that cannot be modified at runtime, but they differ in terms of when their 
//  values are determined.
