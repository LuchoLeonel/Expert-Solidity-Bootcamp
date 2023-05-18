// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Level_4_Solution {
        
    function solution(uint256 value) external {
        assembly {
            sstore(0x03, calldataload(0x04))
        }
    }
}