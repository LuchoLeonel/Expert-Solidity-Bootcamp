// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


contract Level_2_Solution {
        
    function solution(
        uint256[10] calldata unsortedArray
    ) external returns (uint256[10] memory sortedArray){
        sortedArray = unsortedArray;
        bool swapped;

        assembly {
            for {let i := 0} lt(i, 10) {i := add(i, 1)} {
                swapped := false
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
        }
    }

}