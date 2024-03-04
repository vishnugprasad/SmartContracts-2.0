//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract ItemTracker {

    mapping (uint => address) private itemowners;
    mapping (uint => string) private itemDescriptions;

    function registerItems(uint serialNumber, string memory description) public {
        require(itemowners[serialNumber] == address(0), "Item already registered");
        itemowners[serialNumber] = msg.sender;
        itemDescriptions[serialNumber] = description;
    }

    function transferItem(uint serialNumber, address newOwner) public {

        require(itemowners[serialNumber] == msg.sender,"Caller is not the owner of the Item");
        itemowners[serialNumber] = newOwner;
    }

    function getItemOwner(uint _serialNumber) public view returns(address){
        
        return itemowners[_serialNumber];
    }
}