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
    function personHasPrescription(address accountAddress) public view returns (bool) {

        accountAddress = msg.sender;
        if (hasPrescription[accountAddress]) {
            return true;
        }
        else {
            return false;
        }
    }

    // 3. If person does not have prescription, give them a prescription (pharmacist/provider of opioids will do this)
    function givePrescription(address accountAddress) public returns (bool) {

        accountAddress = msg.sender;

        require (!hasPrescription[accountAddress], "this person already has a prescription");
        
        hasPrescription[accountAddress] = true;
        return hasPrescription[accountAddress];
    }


    // Create mapping for each type of opioid to the amount of days it should take for the person to use up all of it
    // => keep track of time by taking the timestamp from which it was originally prescribed

    // Update
    // Add patient verification

    // Decision: Make functions public
}