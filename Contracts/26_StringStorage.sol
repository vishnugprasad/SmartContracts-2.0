// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract StringStorage {
    string private storedString;

    function set(string memory value) public {
      
        storedString = value;        
    }

    function get() public view returns (string memory) {
        return storedString;
    }
}
