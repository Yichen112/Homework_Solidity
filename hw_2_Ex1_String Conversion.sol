// SPDX-License-Identifier:MIT

// Challenge Set 1 - Binary to Decimal Converter

// Exercise 1 - String Conversion
/**
* @custom:dev-run-script ./scripts/BinaryToDecimal.ts
*/

pragma solidity ^0.8.17;

contract BinaryToDecimal {
    function binaryToDecimal(string memory binary) public pure returns (uint256 decimal) {
        bytes memory binaryBytes = bytes(binary);
        uint256 length = binaryBytes.length;
        decimal = 0;
        for (uint256 i = 0; i < length; i++) {
            if (binaryBytes[i] == '1') {
                decimal += 2 ** (length - i - 1);
            }
        }
        return decimal;
    }
}


