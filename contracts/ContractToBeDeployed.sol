// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ContractToBeDeployed{

    string public myFirstStringOnChain = "Hello Chain";

    function updateString(string memory _newString)public payable{
        if(msg.value == 100 wei){
        myFirstStringOnChain = _newString;

        }else payable(msg.sender).transfer(msg.value);
    }
}