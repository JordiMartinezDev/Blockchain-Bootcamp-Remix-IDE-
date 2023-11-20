//SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract MyContract{

    string public ourString = "Hello Worldss";
    bool public testBoolean;

    function updateOurString(string memory _updateString ) public{
        ourString = _updateString;
    }

    function setBoolean(bool _myBool) public{
        testBoolean = _myBool;
    }
}