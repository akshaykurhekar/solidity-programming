// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfElse {

 // if, else, else if

    uint256 public CarPrice;
    uint256 budget = 100;
    bool status = false;

    function buyCar(uint256 price) public returns(bool) {
        CarPrice = price;

        if(CarPrice > budget){
            status = false;
        } else if(CarPrice == budget){
            status = true;
        }else {
            status = true;
        }

        return status;
    } 


    // ternary operater

    function ternaryOp() public view returns(bool){
        
        // statement ? true condetation : false condetation
        return (CarPrice > budget) ? false : true; 
    }     


}