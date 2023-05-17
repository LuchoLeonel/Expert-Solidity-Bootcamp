// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Exercise1 {
    function integer() public returns(uint, int) {
        int h = -31;
        uint i = 14;
        return (i, h);
    }

    function denominator1(uint numerator, uint denominator) public returns(uint result) {
        result = numerator / denominator;
    }

    function denominator2(uint numerator, uint denominator) public returns(uint result) {
        assembly {
            result := div(numerator, denominator)
        }
    }

}