//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract GasCalculation{

    uint c;

    function gasMeasurement() external returns(uint) {
        uint gasBefore = gasleft();
        c++;
        uint gasAfter = gasleft();

        uint gasUsed = gasBefore - gasAfter;
        return gasUsed;
    }
}