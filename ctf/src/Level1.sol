// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Level_1_Solution {

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
    }
}