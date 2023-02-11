// SPDX-License-Identifier:MIT

// Engine.sol
pragma solidity ^0.8.17;

contract Engine {
    function bitwiseOperation(uint a, uint b) public pure returns (uint) {
        return a & b;
    }
}

// Game.sol
pragma solidity ^0.8.17;
import "homework_2/Engine.sol";

contract Game is Engine {

function play(uint guess) public view returns (bool) {
    uint randomA = uint(keccak256(abi.encodePacked(block.timestamp)));
    uint randomB = uint(keccak256(abi.encodePacked(guess)));

    uint result = bitwiseOperation(randomA, randomB);

    return result == guess;
}

}
