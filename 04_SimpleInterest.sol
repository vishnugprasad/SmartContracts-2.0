//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleInterest{
    // (principal * rate * time)/ 100

    uint principle;
    uint rate;
    uint time;
    uint si;

    function calculate(uint p, uint r, uint t) public {
        principle = p;
        rate = r;
        time = t;
        si = (principle*rate*time)/100;
    }


    function getSI() public view returns(uint256) {
        return(si);
    }
}