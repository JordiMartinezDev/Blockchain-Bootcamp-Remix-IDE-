// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ExampleViewPure{

    uint public myStorageVariable;

    function getMyStorageVar() public view returns(uint){
        return myStorageVariable;
    }
    function getAddition(uint a, uint b) public pure returns(uint){
        return a+b;
    }
}