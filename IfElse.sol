// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract IfElse {
    function example(uint _x, uint _y) public pure returns (string memory) {
        if (_x > _y) {
            return "greater";
        } else if (_x < _y) {
            return "less";
        }
        return "equal";
    }

    function ternary(uint _x, uint _y) external pure returns (uint){
        return _x < _y ? 1 : 0;
    }
}