//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract UserRegistration {

    struct UserInfo {
        string name;
        string email;
    }

    mapping(address => UserInfo) private userMapping;

    event userRegistered(address user);
    event userInfoUpdated( address user);
    event userDeleted( address user);

    function registerUser(string memory name, string memory email) public {
        require(bytes(userMapping[msg.sender].name).length == 0, "user already registered");
        userMapping[msg.sender] = UserInfo({name: name, email: email});
        emit userRegistered(msg.sender);
    }

    function getUserInfo() public view returns(string memory name , string memory email){
        require(bytes(userMapping[msg.sender].name).length != 0, "User not found");
        UserInfo storage user = userMapping[msg.sender];
        return(user.name, user.email);
    }

    function updateDuserInfo(string memory name, string memory email) public {
        require(bytes(userMapping[msg.sender].name).length != 0, "user not found");
        userMapping[msg.sender].name = name;
        userMapping[msg.sender].email = email;
        emit userInfoUpdated(msg.sender);
    }

    function deleteUser() public {
        require(bytes(userMapping[msg.sender].name).length != 0, "user not found");
        delete userMapping[msg.sender];  
    }
}