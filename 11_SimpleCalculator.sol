//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Calculator {

    function add(uint a, uint b) public pure returns(uint) {
        return (a+b);
    }

    function subtaction(int a, int b) public pure returns(int){
        return(a-b);
    }

    function multiplication(int a, int b) public pure returns(int) {
        return(a*b);
    }

    function division(uint a, uint b) public pure returns(uint) {
        return (a/b);
    }
}