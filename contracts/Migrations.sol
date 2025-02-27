// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract Migrations {
    address public owner;
    uint256 public last_completed_migration;

    constructor() {
        owner = msg.sender; // Set the contract creator as the owner
    }

    modifier restricted() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setCompleted(uint256 completed) public restricted {
        last_completed_migration = completed;
    }
}
