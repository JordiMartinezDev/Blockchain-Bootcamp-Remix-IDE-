// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract MappingWallet{

    mapping(address => uint) addressBalances;

    function transferMoney() public payable{
        addressBalances[msg.sender] += msg.value;
    }
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    function withdrawBalance(address payable destinationAddress,uint valueToWithdraw) public{
        if(addressBalances[msg.sender] >= valueToWithdraw){
            addressBalances[msg.sender] -= valueToWithdraw;
            destinationAddress.transfer(valueToWithdraw);
        }
    }
}