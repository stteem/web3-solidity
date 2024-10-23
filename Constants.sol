// SPDX-License-Identifier: MIT
pragma solidity >=0.8.26;

// 373 gas
contract Constants {
    address public constant MY_ADDRESS = 0x9ba6d65a984c1e9B7A7ed5f7a1f6e2c3D9e4c1a7;
    uint public constant MY_UINT = 123;
}

// 2483 gas
contract Var {
    address public MY_ADDRESS = 0x9ba6D65a984c1e9c7A7ed5f7a1f6e2c3d9e4C1A7;
}