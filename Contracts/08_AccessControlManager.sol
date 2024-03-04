//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract AccessControlManager {

    mapping(address=> bool) public  isAdmin;

    constructor(){
        isAdmin[msg.sender] = true;
    }

    function grantRole(address account) public {
        require(isAdmin[msg.sender], "You are not an admin");
        isAdmin[account] = true;
    }

    function revokeAdmin(address account) public {
        require(isAdmin[msg.sender], "You dont have admin privilages");
        isAdmin[account] = false;
    }

    function checkRole(address account) public view returns(bool){
        return isAdmin[account];
    }
}