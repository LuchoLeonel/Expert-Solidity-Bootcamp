// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Level_0_Solution {
    constructor() {
        assembly{
            // Store bytecode at to mem position 0
            mstore(0x00, 0x602a5f5260205ff3)
            // return mem position 0x18 => skip prepadding 0 for 24 bytes
            return(0x18, 0x08)
        }
    }
}