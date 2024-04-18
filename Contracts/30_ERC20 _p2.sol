// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";


contract MyToken is ERC20 {
    using SafeMath for uint256;
    address public owner;

    constructor() ERC20("My Token", "MTKN"){
        owner = msg.sender;
        _mint(owner, 100);
    }

    function _mint(uint256 amount) public {
        require(msg.sender == owner, "Only owner is having the privilage to mint");
        super._mint(owner, amount);

    }

    function _burn(uint256 amount) public {
        require(msg.sender == owner, "Only owner is having the privilage to burn");
        super._burn(owner, amount);
    }

    function getBalance() public view returns(uint256){
        return balanceOf(msg.sender);
    }

    
}