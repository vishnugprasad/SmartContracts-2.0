//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract Counter {
    uint256 count;

    function increment() public {
        count++;
    }

    function decrement() public {
        count--;
    }

    function getCount() public view returns(uint256) {
        return count;
    }
}