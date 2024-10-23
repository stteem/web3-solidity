// SPDX-License-Identifier: MIT
pragma solidity >=0.8.26;

contract EtherValue {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {
        uint amountInWei = msg.value;
        uint amountInEther = amountInWei / 1 ether;
        uint amountInGwei = amountInWei / 1 gwei;

        emit ValueReceived(msg.sender, amountInWei, amountInEther, amountInGwei);
    }

    event ValueReceived(address sender, uint amountInWei, uint amountInEther, uint amountInGwei);

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        payable(owner).transfer(address(this).balance);
    }
}
