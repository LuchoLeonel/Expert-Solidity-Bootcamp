// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "forge-std/Test.sol";
import { console2 } from "forge-std/console2.sol";

import {Level_1_Solution} from "../src/Level1.sol";
import {Level_2_Solution} from "../src/Level2.sol";


contract TestExercise1 is Test {
    Level_1_Solution level1;
    Level_2_Solution level2;

    address player = makeAddr("player");
    address other = makeAddr("other");

    function setUp() public {
        level1 = new Level_1_Solution();
        level2 = new Level_2_Solution();
    }

    function testChallenge() public {
        uint256[2][2] memory x;
        uint256[2][2] memory y;
        level1.solution(x, y);

        uint256[10] memory arguments = [
            uint256(10),
            uint256(7),
            uint256(5),
            uint256(3),
            uint256(6),
            uint256(1),
            uint256(11),
            uint256(19),
            uint256(50),
            uint256(2)
        ];
        uint256[10] memory result = level2.solution(arguments);
        for (uint256 i = 0; i < result.length; i++) {
            console2.log(result[i]);
        }
    }
}