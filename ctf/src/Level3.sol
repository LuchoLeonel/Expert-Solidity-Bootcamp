// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


contract Level_3_Solution {
    constructor() {
        assembly {
        mstore(0x00, 0x6004353b5f5260205ff3)
        return(0x16, 0x0a)
    }
}
/*
   function solution(address addr) external view returns (uint256) {
       assembly {
           mstore(0x00, extcodesize(calldataload(0x04)))
           return(0x00, 0x20)
       }
   }
*/
}