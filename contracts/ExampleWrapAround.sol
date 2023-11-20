// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ExampleWrapAround{
    uint public myUint;
    uint8 public myUint8;

    function setUint(uint _inputUint) public{
        myUint = _inputUint;
    }
    function setUint8(uint8 _inputUint8) public{
        myUint8 = _inputUint8;
    }
    function increment() public{
        myUint++;
    }
    function decrement() public{
        unchecked{
            myUint--;
        }
        
    }
    function decrementUint8() public{
        myUint8--;
    }
}