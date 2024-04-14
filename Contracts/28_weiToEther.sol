//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";


contract Conversion {

    uint256 public constant WtE = 1e18;

    function weiToEther(uint256 amount)public pure returns(uint256){
        return(amount/WtE);
    }

    function etherToWei(uint256 amount) public pure returns(uint256){
        return(amount*WtE);
        
    }
}

//entering 50000 wei into the weiToEther function will return 0 ether because the conversion result is a fraction less than 1 ether, and Solidity cannot represent such fractional results when using unsigned integers (uint256).