// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Level_0_Solution {
    constructor() {
        assembly{
            // Store bytecode at to mem position 0
            mstore(0x00, 0x602a60005260206000f3)
            // return mem position 0x16 => skip prepadding 0 for 22 bytes
            return(0x16, 0x0a)
        }
    }
}