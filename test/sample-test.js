const { expect } = require("chai");
const { ethers } = require("hardhat");

// describe("Greeter", function () {
//   it("Should return the new greeting once it's changed", async function () {
//     const Greeter = await ethers.getContractFactory("Greeter");
//     const greeter = await Greeter.deploy("Hello, world!");
//     await greeter.deployed();

//     expect(await greeter.greet()).to.equal("Hello, world!");

//     const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

//     // wait until the transaction is mined
//     await setGreetingTx.wait();

//     expect(await greeter.greet()).to.equal("Hola, mundo!");
//   });
// });



// describe("Opioids Misuse", function () {
//     it("should do something", async function () {
//         const MainContract = await ethers.getContractFactory("MainContract");
//         const mainContract = await MainContract.deploy();
//         await mainContract.deployed();

//         expect(await mainContract.personHasPrescription('0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266')).to.equal(false);

//         const setHasPrescriptionTx = await mainContract.givePrescription('0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266');

//         await setHasPrescriptionTx.wait();

//         expect(await mainContract.personHasPrescription()).to.equal(true);
//     });
// })



describe("Checking if person has prescription", function() {
    it("should check if a person has a prescription", async function () {
        const MainContract = await ethers.getContractFactory("MainContract");
        const mainContract = await MainContract.deploy();
        await mainContract.deployed();
        
        expect(await mainContract.personHasPrescription('0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266')).to.equal(false);

        await mainContract.givePrescription('0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266');

        expect(await mainContract.personHasPrescription('0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266')).to.equal(true);
    })
})