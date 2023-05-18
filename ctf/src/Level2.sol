// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


contract Level_2_Solution {
        
    function solution(
        uint256[10] calldata unsortedArray
    ) external returns (uint256[10] memory) {
        assembly {
            mstore(0x1a0, calldataload(0x04))
            mstore(0x1c0, calldataload(0x24))
            mstore(0x1e0, calldataload(0x44))
            mstore(0x200, calldataload(0x64))
            mstore(0x220, calldataload(0x84))
            mstore(0x240, calldataload(0xa4))
            mstore(0x260, calldataload(0xc4))
            mstore(0x280, calldataload(0xe4))
            mstore(0x2a0, calldataload(0x104))
            mstore(0x2c0, calldataload(0x124))
            for {let i := 0} lt(i, 10) {i := add(i, 1)} {
                let swapped := false
                for {let j := 0} lt(j, 10) {j := add(j, 1)} {
                    let slot := add(0x1a0, mul(0x20, j))
                    let actual := mload(slot)
                    let next := mload(add(slot, 0x20))
                    if lt(next, actual) {
                        mstore(slot, next)
                        mstore(add(slot, 0x20), actual)
                        swapped := true
                    }
                }
                if iszero(swapped) {
                    break
                }
            }
            return(0x1c0, 0x140)
        }
    }

}