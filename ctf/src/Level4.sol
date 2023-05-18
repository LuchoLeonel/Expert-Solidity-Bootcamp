// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Level_4_Solution {
    
    constructor() {
        assembly {
            mstore(0x00, 0x600435600355)
            return(0x1a, 0x06)
        }
    }
/*
    function solution(uint256 value) external {
        assembly {
            sstore(0x03, calldataload(0x04))
        }
    }
*/
}