// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ContractToBeDeployed{

    string public myFirstStringOnChain = "Hello Chain";

    function updateString(string memory _newString)public{
        myFirstStringOnChain = _newString;
    }
}