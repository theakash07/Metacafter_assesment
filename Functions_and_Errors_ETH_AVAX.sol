// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 public value;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 newValue) public {
        // Use require to validate input
        require(newValue > 0, "Value must be greater than 0");

        value = newValue;
    }

    function checkOwner() public view {
        // Use assert to check for an internal error
        assert(owner == msg.sender);
    }

    function resetValue() public {
        // Use revert to handle an error condition
        if (msg.sender != owner) {
            revert("Only the owner can reset the value");
        }

        value = 0;
    }
}
