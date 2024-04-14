//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleHash{
    bytes32 public hashValue;

    function hash(string memory _message) public {
        hashValue = keccak256(abi.encodePacked(_message));
    }

    function getHashValue() public view returns(bytes32){
        return hashValue;
    }
}