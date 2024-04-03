//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract ExpiryCheck{
    uint public creationTime;
    uint public expirationTime;

    constructor(){
        creationTime = block.timestamp;
    }

    function onTime() public {
        expirationTime = creationTime + 1 days;
    }

    function expire() public {
        expirationTime = creationTime - 1 days;
    }

    function isExpired() public view returns(bool){
       return (block.timestamp >= expirationTime);
    }
}