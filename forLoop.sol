// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Loop {

    uint[] public data;
    
    //loops
    // for, while, do while

    function forLoop() public returns(uint[] memory){

        for(uint i=0; i<10; i++){
                data.push(i);
        }

        return data;
    } 

    // while loop - condetion 

    function whileLoop() public returns (uint[] memory) {

        uint j =0;

        while (j<20){
            // code execute
            // j++;
            data.push(j);
            j++;
        }

        return data;
    }
    

    // do while loop
   
   function doWhileLoop() public returns(uint[] memory) {

       uint k=1;
       do {
           // execute code
            data.push(k);
            k++;
       }while (k<5);

       return data;
   } 


}
