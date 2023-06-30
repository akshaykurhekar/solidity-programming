// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;


contract addressContract {

// address: Holds a 20 byte value (size of an Ethereum address).
// address payable: Same as address, but with the additional members transfer and send.

    address public owner;
    address payable public user;

    // 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB

    // contract address => 0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3
    // owner => 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

    function getAddressBalance(address account) public view returns (uint256) {
        return account.balance;
    }

    function sendEtherToUser(address payable to) public payable {
        owner = msg.sender;
        user = to;
        user.transfer(msg.value);
    } 

    function sendEtherToUser1(address to) public payable   {
        owner = msg.sender;
        user = payable(to);
        user.transfer(msg.value);
    }

}