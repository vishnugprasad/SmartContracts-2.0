//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract WhiteList {

    uint8 public maxWhiteListAddress;
    address owner;

    mapping(address => bool) public whiteListedAddresses;

    uint8 public numWhiteListedAddress;

    constructor(uint8 _maxWhiteListedAddress) {
        maxWhiteListAddress = _maxWhiteListedAddress;
        owner = msg.sender;
    }

    modifier onlyOwner{
       require(msg.sender == owner, "You dont have the privilage");
        _;
    }

    function addAddressesToWhiteList(address person) public onlyOwner {
        require(! whiteListedAddresses[person], "account is already whitelisted");
        require(numWhiteListedAddress < maxWhiteListAddress, "Limit is reached");
         whiteListedAddresses[person] = true;
         numWhiteListedAddress += 1;
    }
}