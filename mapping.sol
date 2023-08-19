// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {

    // mapping(uint => address) myMap; 
    // itration not alowed in mapping
    // it support nested mapping we called it as `mapping of mapping`

    // simple mapping
    mapping(uint => string) public myMap;
    // myMap(1 => "Stud1", 2 => "Stud2", ....)

    function setMap(uint key, string memory value) public returns(string memory) {
        myMap[key] = value;

        return myMap[key];
    }

    // nested mapping

    mapping(uint => mapping (string => uint) ) public nestedMap;
    // nestedMap( 1 => Akshay -> 24, 2 => Gaurav -> 21, 3 => Rama -> 22,... )

    function setNestedMap(uint key, string memory user, uint age) public {
        nestedMap[key][user] = age;
    }

}