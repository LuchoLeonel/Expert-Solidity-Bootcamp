// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Level_1_Solution {
    constructor() {
        assembly {
            mstore(0x00, 0x608435600435015f5260a4)
            mstore(0x20, 0x356024350160205260c4356044350160405260e4356064350160605260805ff3)
            return(0x15, 0x2b)
        }
    }
/*
    function solution(
        uint256[2][2] calldata x,
        uint256[2][2] calldata y
    ) external pure returns (uint256[2][2] memory finalArray) {

        assembly{
            mstore(0xc0, add(calldataload(0x4), calldataload(0x84)))
            mstore(0xe0, add(calldataload(0x24), calldataload(0xa4)))
            mstore(0x100, add(calldataload(0x44), calldataload(0xc4)))
            mstore(0x120, add(calldataload(0x64), calldataload(0xe4)))
        }
        
    }*/
}