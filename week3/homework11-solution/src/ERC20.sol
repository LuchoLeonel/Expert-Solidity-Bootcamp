// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8;

import "solmate/tokens/ERC20.sol";


contract MyERC20 is ERC20 {
    constructor() ERC20("MyToken", "TK", 18) { }

      function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}