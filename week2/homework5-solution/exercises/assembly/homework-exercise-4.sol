pragma solidity ^0.8.4;

contract Exercise {

    function yul() public returns(uint256) {
        assembly {
            let result := add(0x07, 0x08)
            let pos := mload(0x40)
            let free_mem := add(ptr, 0x20)
            mstore(free_mem, result)
            return(free_mem, 0x20)
        }
    }
}
