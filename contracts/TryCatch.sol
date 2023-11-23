// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract TryCatch{

    error ErrorBytes(string);

    mapping(address => uint) public balanceReceived;

    function receiveMoney() public payable{
        assert(msg.value == uint8(msg.value));
        balanceReceived[msg.sender] += uint8(msg.value);
    }
    function withdrawMoney(address payable _to, uint8 _amount) public{
        require(_amount <= balanceReceived[msg.sender], "Not enough founds, reverting!");
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }

    function throwErrorFunction() public pure{
        //require(false, " error");
        //assert(false);
        revert ErrorBytes("Not Catchable error, but reverting everything here");
    }


}

contract ErrorHandling{
    event ErrorRequire(string reason);
    event ErrorAssertCode(uint code);
    event ErrorBytes(bytes code);
    function catchTheError() public{
        TryCatch throwError = new TryCatch();
        
        try throwError.throwErrorFunction(){

        }catch Error(string memory reason){

            emit ErrorRequire(reason);
        }catch Panic(uint errorCode){
            emit ErrorAssertCode(errorCode);
        }catch(bytes memory lowLevelData){
            emit ErrorBytes(lowLevelData);
        }

        
    }
}