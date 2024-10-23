// SPDX-License-Identifier: MIT
pragma solidity >=0.8.26;

// Data types - values and references

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2**256 - 1
                         //        uint8 0 to 2**8 - 1
                         //        uint16 0 to 2**16 - 1
    int public i = -123; // int = int256 -2**255 to 2**255 - 1
                         //       int128 -2**127 to 2**125 - 1
    int public minInt = type(int).min;
    int public  maxInt = type(int).max;
    address public addr = 0x9ba6d65a984c1e9B7A7ed5f7a1f6e2c3D9e4c1a7;
    bytes32 public  b32 = 0x6a5e5a31497d4517969f1c77d8b982c6e5dcfc9d4eb7e59e1e7a6895c4e33e1b;
}
