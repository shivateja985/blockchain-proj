const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Calculator", () => {

    it ("adds two numbers", async () => {

        const Calculator = await ethers.getContractFactory('Calculator')
        const calculate = await Calculator.deploy("add",3,2)
        const result = await calculate.res()
        expect(result).to.equal(5)
    })
})