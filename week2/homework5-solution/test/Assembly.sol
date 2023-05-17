// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "forge-std/Test.sol";

import {Intro} from "../exercises/assembly/Assembly_1.sol";
import {Add} from "../exercises/assembly/Assembly_2.sol";
import {SubOverflow} from "../exercises/assembly/Assembly_3.sol";
import {Scope} from "../exercises/assembly/Assembly_4.sol";
import {Exercise} from "../exercises/assembly/homework-exercise-4.sol";



contract Assembly is Test {
    Intro contractIntro;
    Add contractAdd;
    SubOverflow contractOverflow;
    Scope contractScope;
    Exercise contractExercise;

    address player = makeAddr("player");

    function setUp() public {
        contractIntro = new Intro();
        contractAdd = new Add();
        contractOverflow = new SubOverflow();
        contractScope = new Scope();
        contractExercise = new Exercise();
    }

    function testChallenge() public {        

        assertEq(
            contractIntro.intro(),
            420,
            "It's not the same"
        );

        assertEq(
            contractAdd.addAssembly(2, 8),
            10,
            "It's not adding correctly"
        );

        assertEq(
            contractOverflow.subtract(10, 2),
            8,
            "It's not the subtracting correctly"
        );

        assertEq(
            contractOverflow.subtract(10, 12),
            0,
            "It's not the subtracting correctly"
        );


        contractScope.increment(10);
        assertEq(
            contractScope.count(),
            20,
            "It's not the incrementing correctly"
        );

        assertEq(
            contractExercise.yul(),
            15,
            "It's not the using the memory pointer correctly"
        );
    }
}