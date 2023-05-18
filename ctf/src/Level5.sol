// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


contract Level_5_Solution {

    constructor() {
        assembly {
            mstore(0x00, 0x6064356044356024350a065f5260205ff3)
            return(0xf, 0x11)
        }
    }
    

    /*
    function solution(bytes32 b, bytes32 ex, bytes32 modulus) external 
    returns (bytes32) {
        assembly {
            mstore(0x00, mod(exp(b, ex), modulus))
            return(0x00, 0x20)
        }
    }
    */
}