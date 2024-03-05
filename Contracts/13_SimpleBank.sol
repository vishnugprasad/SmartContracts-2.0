//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract MyBank {
    mapping(address => uint)  balanceLedger;

    function deposit() public payable {
        balanceLedger[msg.sender] += msg.value;
    }

    function withdraw(uint amt) public {
        require(balanceLedger[msg.sender] >= weiToEther(amt), "insufficient fund");
        payable(msg.sender).transfer(weiToEther(amt));
        balanceLedger[msg.sender] -= weiToEther(amt);
    }

    function weiToEther(uint _amt) private pure returns(uint) {
        return(_amt*1000000000000000000);
    }

    function getBalance(address customer) public view returns(uint){
        return(balanceLedger[customer]);
    }


}