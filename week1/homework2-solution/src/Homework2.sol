// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract Homework2 {
    uint8[] public myDynamicArray;

    //Custom errors are more gas efficient than require with a string revert message
    error IndexOutOfBounds();

    constructor() {
        myDynamicArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
    }

    function deleteAtIndex(uint8 index) external {
        uint8 arrayLength = uint8(myDynamicArray.length);
        if (index >= arrayLength) {
            revert IndexOutOfBounds();
        }

        uint8[] memory temporaryArray = myDynamicArray;

        for (uint8 i = index; i < arrayLength - 1;) {
            temporaryArray[i] = temporaryArray[i + 1];

            unchecked {
                i++;
            }
        }
        myDynamicArray = temporaryArray;
        myDynamicArray.pop();
    }

    function getArray() external view returns (uint8[] memory) {
        return myDynamicArray;
    }
}