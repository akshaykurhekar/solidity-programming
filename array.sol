
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//eposide 13 array

contract MyArray {
     
     uint[] myarray;
     uint[10] myarray2; // 0

    // set array
    function setArray(uint item) public {
        myarray.push(item);
    }

    // get array
    function getArray() public view returns(uint[] memory) {
        return myarray;
    }
    
    // array length
    function arrayLength() public view returns(uint) {
        return myarray.length;
    } 

    // get item by id
    function getItemById(uint id) public view returns(uint){
        return myarray[id];
    } 
  
    // delete array item
    function deleteArrayById(uint id) public returns(uint[] memory){
        delete myarray[id];
        return myarray;
    } 
    
     // remove last element
    function popArray() public returns(uint[] memory){
        myarray.pop();
        return myarray;
    }

    // creating fix sized array in side memory using function
    function createArray() public pure returns(uint[] memory){
        uint[] memory newArray = new uint[](5);
        newArray[0] = 10;
        newArray[3] = 40;
        return newArray;
    } 
}