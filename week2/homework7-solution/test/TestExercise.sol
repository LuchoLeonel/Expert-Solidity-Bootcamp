// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "forge-std/Test.sol";
import { console2 } from "forge-std/console2.sol";

import {Exercise1} from "../src/Exercise1.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


contract MyERC20 is ERC20 {
    constructor() ERC20("MYERC20", "M20") {}

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }
}

contract TestExercise1 is Test {
    Exercise1 contractExercise;
    MyERC20 erc20;

    address player = makeAddr("player");
    address other = makeAddr("other");

    function setUp() public {
        erc20 = new MyERC20();
        contractExercise = new Exercise1(address(erc20));
        erc20.mint(address(contractExercise), 100);
    }

    function testChallenge() public {

        contractExercise.query(100, other, erc20.transfer);

        bytes memory data = abi.encodeWithSignature("transfer(address,uint256)", other, 100);
        contractExercise.checkCall(data);

        
    }
}