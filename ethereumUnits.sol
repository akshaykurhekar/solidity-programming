// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EtherUnits {
    uint public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;

    // 1 ether is equal to 10^9 gwei ( 1 gwei = 10^9 wei);
    uint public oneGWei = 1 gwei;

}

// 1000000000000000000 = 10^18 wei = 1 ether =1e18
//  123456789123456789 = 18

//  1000000000 = 10^9 wei = 1 gwei
//   123456789

// ether > gwei > wei
// 10^18 > 10^9 > 1