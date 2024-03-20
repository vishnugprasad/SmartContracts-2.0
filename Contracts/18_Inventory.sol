//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract Solution {
    struct Item {
        string name;
        uint256 price;
    }

    Item[] public inventory;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addItemToInventory(
        string memory _name,uint256 _price) public onlyOwner {
        Item memory newItem = Item({name: _name, price: _price});
      inventory.push(newItem);
        
    }

    modifier onlyOwner() {
       require(msg.sender == owner, "You dont have the privilage");
        _;
    }

    function getInventory() public view returns (Item[] memory) {
        return inventory;
      
    }

    function clearInventory() private onlyOwner {
        delete inventory;
    }
}

