// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "forge-std/Test.sol";
import { console2 } from "forge-std/console2.sol";

import {Exercise1} from "../src/Exercise1.sol";


contract TestExercise1 is Test {
    Exercise1 contractExercise;

    address player = makeAddr("player");
    address other = makeAddr("other");

    function setUp() public {
        contractExercise = new Exercise1();
    }

    function testChallenge() public {
        (uint here, int there) = contractExercise.integer();
        console2.logBytes32(bytes32(here));
        console2.logBytes32(bytes32(uint256(there)));

        uint result1 = contractExercise.denominator1(1, 0);
        uint result2 = contractExercise.denominator2(1, 0);

    }
}