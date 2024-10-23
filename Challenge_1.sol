// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract VariableContract {
    uint public number;
    string public text;
    bool public flag;
    address public addr;

    // Set and get functions for uint
    function setNumber(uint _number) public returns (uint) {
        number = _number;
        return number;
    }

    function getNumber() public view returns (uint) {
        return number;
    }

    // Set and get functions for string
    function setText(string memory _text) public returns (string memory) {
        text = _text;
        return text;
    }

    function getText() public view returns (string memory) {
        return text;
    }

    // Set and get functions for bool
    function setFlag(bool _flag) public returns (bool) {
        flag = _flag;
        return flag;
    }

    function getFlag() public view returns (bool) {
        return flag;
    }

    // Set and get functions for address
    function setAddr(address _addr) public returns (address) {
        addr = _addr;
        return addr;
    }

    function getAddr() public view returns (address) {
        return addr;
    }
}
