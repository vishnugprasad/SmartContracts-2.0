//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract MyBook {


    struct Book {
        uint id;
        string name;
        uint price;
        bool sold;
    }

    address owner;
    address[] public buyers;
    Book myBook;


    function setBook(uint id, string memory name, uint price) public {
        myBook.id = id;
        myBook.name = name;
        myBook.price = price;
        myBook.sold = false;
        owner = msg.sender;
    }


    function getBook() public view returns (uint, string memory, address) {
        return( myBook.price,myBook.name, owner );
    }

    function buyBook(uint256 amt) public payable {
        require(amt >= myBook.price,"Insufficent balance");
        owner = msg.sender;
        buyers.push(owner);
        uint256 balance = amt - myBook.price;
        if(balance >0){
            payable(msg.sender).transfer(balance);        
        }
        myBook.sold = true;
    }

}