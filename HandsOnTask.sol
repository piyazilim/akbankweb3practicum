pragma solidity ^0.8.17;
// SPDX-License-Identifier: MIT

contract FeeCollector { // 
    address public owner;
    uint256 public balance; constructor() {
        owner = msg.sender; // store information who deployed contract   0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    }
    
    receive() payable external {
        balance += msg.value; // keep track of balance (in WEI)
    }
    
    
    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        
        destAddr.transfer(amount); // send funds to given address
        balance -= amount;
    }
}
