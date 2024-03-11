//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract ContactBook {

    struct Contact {
        string name;
        string phoneNumber;
        string emailId;
    }

    mapping(string => Contact) private contacts; 

    function setContact(string memory _name, string memory _phoneNumber, string memory _emailId) public {
        contacts[_name] = Contact(_name, _phoneNumber, _emailId);

    }

    function getContact(string memory _name) public view returns(string memory name, string memory phoneNumber, string memory emailId){
        require(bytes(contacts[_name].name).length != 0, "contact dosent exists");
        Contact memory contact = contacts[_name];
        return(contact.name, contact.phoneNumber, contact.emailId);
    }

    function removeContact(string memory _name) public {
        require(bytes(contacts[_name].name).length !=0, "Contact dosent exist");
        delete contacts[_name];
    }
}