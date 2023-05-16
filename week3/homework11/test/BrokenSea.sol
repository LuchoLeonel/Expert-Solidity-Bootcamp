// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "forge-std/Test.sol";

import {BrokenSea} from "../src/BrokenSea.sol";
import {MyERC20} from "../src/ERC20.sol";
import {MyERC721} from "../src/ERC721.sol";

contract BrokenSeaTest is Test {
    address bidder = makeAddr("bidder");
    address owner = makeAddr("owner");
    BrokenSea sea;
    MyERC20 erc20;
    MyERC721 erc721;
    uint256 id = 0;

    function setUp() public {
        sea = new BrokenSea();
        erc20 = new MyERC20();
        erc20.mint(bidder, 100);
        erc721 = new MyERC721();
        erc721.mint(owner, id);
    }

    function testChallenge() public {        
        vm.startPrank(bidder);

        erc20.approve(address(sea), 100);
        sea.createBid(erc721, id, erc20, 100);

        vm.stopPrank();
        vm.startPrank(owner);
        
        erc721.approve(address(sea), id);
        sea.acceptBid(bidder, erc721, id, erc20, 100);

        vm.stopPrank();
    }
}