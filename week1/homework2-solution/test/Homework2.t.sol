// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Homework2.sol";

contract CounterTest is Test {
    Homework2 public homework;

    function setUp() public {
        homework = new Homework2();
    }

}
