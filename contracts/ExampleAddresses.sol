// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ExampleAddresses{

    address public someAddress;

    function setSomeAddress(address _newAddress) public{
        someAddress = _newAddress;
    }

    function getAddressBalance() public view returns(uint){
        return someAddress.balance;
    }
}