//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Engine{
    function bitwiseAnd(uint number_1, uint number_2) public pure returns (uint) {
        return number_1 & number_2;
    }
}
