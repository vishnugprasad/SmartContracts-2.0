//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Pool {
    enum State {Initialized, Finalized, Deactivated }
    State public poolState;

    constructor(){
        poolState = State.Finalized;
    }

    function isValidState() public view returns(bool) {
        return( poolState == State.Initialized);
    }
}