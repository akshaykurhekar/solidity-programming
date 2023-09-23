// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//eposide 15 Structs

contract Structs {

    //define struct (custom datatype)
   struct Courses {
       string videoTitle;
       uint256 number;
       bool uploaded;
       string author;
   }

    // use struct with array
    // uint[] public aa;

    Courses[] public solidityCourse;
    
    // write data to struct
    function writeData(string calldata _title, uint _number, bool _flag) public {
        // first method
        // solidityCourse.push( Courses("v1",15,true,"akshay") );

        //second method (key-value)

        // solidityCourse.push( Courses({ videoTitle:"Struct", number:15,uploaded:true, author:"AkshayMK" }) );
        solidityCourse.push( Courses({ videoTitle: _title, number:_number,uploaded: _flag, author:"AkshayMK" }) );
    }

   
    // read data of struct  
    function readData() public view returns(Courses[] memory){
        return solidityCourse;
    } 

    // update struct 
    function updateStruct(uint id, string calldata _title) public {
        solidityCourse[id].videoTitle = _title;
    }

}