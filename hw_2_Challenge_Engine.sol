// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract BitwiseOperation {
    function performBitwiseAND(uint a, uint b) public pure returns (uint) {
        return a & b;
    }
}
