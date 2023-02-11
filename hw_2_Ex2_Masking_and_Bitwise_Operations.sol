//Exercise 2 - Masking and Bitwise Operations

// SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract BitFunctions {
    function getBits(uint8 x) public pure returns (uint8[] memory bits) {
        uint8 mask = 1;
        for (uint8 i = 0; i < 8; i++) {
            if ((x & mask) != 0) {
                bits[i] = uint8(1);
            } else {
                bits[i] = uint8(0);
            }
            mask = mask << 1;
        }
        return bits;
    }
}
