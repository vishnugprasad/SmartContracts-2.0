// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;

    constructor(uint256 initialSupply) ERC20("My Token", "MTKN"){
        owner = msg.sender;
        _mint(owner, initialSupply);
    }   

    function getBalance() public view returns(uint256){
        return balanceOf(msg.sender);
    }
}
