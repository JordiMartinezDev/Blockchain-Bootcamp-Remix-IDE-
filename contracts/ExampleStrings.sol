// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ExampleStrings{
    string public myString = "Hello World";
    bytes public myBytes = "Hello World";

    function setMyString(string memory _newString) public{
        myString = _newString;
    }

    function compareTwoStrings(string memory _compareString) public view returns(bool){

        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_compareString));
    }
}