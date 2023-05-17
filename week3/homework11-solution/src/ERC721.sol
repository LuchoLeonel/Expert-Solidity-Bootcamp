// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8;

import "solmate/tokens/ERC721.sol";

contract MyERC721 is ERC721 {

    constructor() ERC721("MyNFT", "MNFT") { }

    function mint(address to, uint256 id) public {
        _safeMint(to, id);
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        return "s";
    }
}