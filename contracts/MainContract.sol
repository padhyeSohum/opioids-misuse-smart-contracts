//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";


contract MainContract {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // 1. Create mapping for each address

    mapping(address => bool) hasPrescription;

    // 2. Check if account address has prescription
    function checkIfHasPrescription() public view returns (bool _hasPrescription) {
        if (hasPrescription[msg.sender]) {
            return _hasPrescription;
        }
        else {
            return !_hasPrescription;
        }
    }


    // Create mapping for each type of opioid to the amount of days it should take for the person to use up all of it
    // => keep track of time by taking the timestamp from which it was originally prescribed
    // Update
    // Add patient verification

    // Decision: Make functions public
}