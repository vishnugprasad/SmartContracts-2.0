//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Bank{

    mapping(address => uint) public balance;

    function deposite() public payable {
        balance[msg.sender] += msg.value;
    }

    function withdraw(uint256 amt) public {
        require(amt <= balance[msg.sender], "insufficient fund");
        balance[msg.sender] -= amt;
        payable(msg.sender).transfer(amt);
    }

    function checkBalance(address addr) public view returns(uint) {
        return (balance[addr]);
    } 
}