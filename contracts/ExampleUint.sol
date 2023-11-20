// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ExampleUint{
    uint public myUint;

    function setUint(uint _inputUint) public{
        myUint = _inputUint;
    }
    function increment() public{
        myUint++;
    }
    function decrement() public{
        myUint--;
    }
}