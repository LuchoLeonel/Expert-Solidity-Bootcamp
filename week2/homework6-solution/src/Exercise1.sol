// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Exercise1 {
    function amount() payable external returns(uint256) {
        assembly {
            mstore(0x00, callvalue())
            return(0x00, 0x20)
        }
    }
}