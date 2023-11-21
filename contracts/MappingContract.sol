// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract MappingContract{

    mapping(uint => bool) public myMapping;
    mapping(address => uint) public addressBalances;

    mapping(address => mapping(address=>bool)) public addressFriendship;

    function setMyMapping(uint _key, bool value)public{
        myMapping[_key] = value;
    }
    function addFundsToMyAddress() public payable{
        addressBalances[msg.sender] += msg.value;
    }

    function setAddressFriendship(address _key1,address _key2,bool value)public{
        addressFriendship[_key1][_key2] = value;
    }
}