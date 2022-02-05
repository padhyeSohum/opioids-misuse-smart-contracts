//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";


contract MainContract {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Create mapping for each address
    // Create mapping for each type of opioid to the amount of days it should take for the person to use up all of it
    // => keep track of time by taking the timestamp from which it was originally prescribed
    // Check if account address has prescription
    // Update
    // Add patient verification

    // Decision: Make functions public
}