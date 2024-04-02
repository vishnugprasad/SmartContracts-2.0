//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract Pool {

    enum State {
        Initilized,
        Finilized,
        Deactivated
    }

    State public poolState;

    constructor(){
        poolState = State.Initilized;
    }

    function isValidState() public view returns(bool){
        require(poolState == State.Initilized, "not a valide operation");
        return true;
    }
}