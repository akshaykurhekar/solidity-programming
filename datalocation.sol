// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataLocation {

    // three types of datalocation 

    // Storage - default blockchain state
 
    // memory - store data into memory temprary and scoped

    // calldata - special type of data location temprary storage,
    // used to store function argument
   
    struct UserData {
        string name;
        uint256 age;
    }

    mapping(address => UserData) private userDatabase;

    // Function to store user data in storage
    function storeUserData(string memory _name, uint256 _age) public {
        UserData storage newUser = userDatabase[msg.sender];
        newUser.name = _name;
        newUser.age = _age;
    }

    // Function to retrieve user data from storage
    function getUserData() public view returns (string memory, uint256) {
        UserData storage user = userDatabase[msg.sender];
        return (user.name, user.age);
    }

    // Function to update user data using calldata
    function updateUserData(string calldata _name, uint256 _age) public {
        UserData storage user = userDatabase[msg.sender];
        user.name = _name;
        user.age = _age;
    }

    // Function to retrieve user data using address parameter and memory
    function getUserDataByAddress(address userAddress) public view returns (string memory, uint256) {
        UserData memory user = userDatabase[userAddress];
        return (user.name, user.age);
    }

}