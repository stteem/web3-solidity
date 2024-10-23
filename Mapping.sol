// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// Mapping
// How to declare a mapping (simple and nested)
// Set, get, delete

// ["alice", "bob", "charlie"]
// {"alice":true, "bob":true, "charlie":true}
contract Mapping {
    mapping(address => uint) public  balances;
    mapping (address => mapping (address => bool)) public isFriend;

    function setValue(uint _value) public {
        balances[msg.sender] = _value;
    }

    function examples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)]; // 0
        balances[address(1)] = 555;
        uint bal3 = balances[address(1)]; //555
        balances[address(1)] += bal2;

        balances[msg.sender] += bal; // 123 + 456 = 579
        balances[msg.sender] += bal3; // 579 + 555 = 1134
        delete balances[msg.sender]; // 0
        isFriend[msg.sender][address(this)] = true;
    }
}