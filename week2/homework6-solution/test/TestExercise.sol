// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "forge-std/Test.sol";

import {Exercise1} from "../src/Exercise1.sol";


contract TestExercise1 is Test {
    Exercise1 contractExercise;

    address player = makeAddr("player");

    function setUp() public {
        contractExercise = new Exercise1();
    }

    function testChallenge() public {        

        assertEq(
            contractExercise.amount{value: 1000}(),
            1000,
            "It's not the same value"
        );
    }
}