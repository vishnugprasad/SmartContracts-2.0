//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Transfer{

    constructor() payable {
        
    }

    event EtherTransfered(address indexed _to, uint256 _amount);

    function transfer(address payable _to, uint256 amount) public {
        require(amount <= address(this).balance,"insufficient balance" );
        _to.transfer(amount);

        emit EtherTransfered(_to, amount);

    }
}