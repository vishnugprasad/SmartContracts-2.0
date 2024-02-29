//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract HelloWorld {

    string message;

    function setMessage(string memory _message) public {
        message = _message;
    }

    function displayMessage() public view returns(string memory) {
        return(message);
    }
}
