// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Enum {

    // define enum
    enum Support {Like, Comment, Share, Subscribe} //0,1,2,3

    // decleare enum variable 
    Support public userAction;

    // read enum
    function readEnum() public view returns(Support){
        return userAction;
    }

    // write enum
    function setValue(Support val) public {
        userAction = val;
    }

    // second 

    function setDefalut() public {
        userAction = Support.Subscribe;
    }

    // reset enum

    function resetEnum() public {
        delete userAction;
    }
   

}