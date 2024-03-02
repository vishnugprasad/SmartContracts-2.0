//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract AccessControlManager {


    mapping(address => bool) public isAdmin;

    constructor(){
        isAdmin[msg.sender] = true;
    }

    modifier onlyAdmin(){
        require(isAdmin[msg.sender], " You dont have admion privilages");
        _;
    }

    function grantRole(address account) public onlyAdmin {
        //require(isAdmin[msg.sender], "You dont have the admin privilage");
        isAdmin[account ] = true;

    }

    function revokeAdmin(address account) public onlyAdmin {
        isAdmin[account] = false;
    }


    function checkAdmin(address account) public  view returns(bool) {
        return isAdmin[account];
    }




}