const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Calculator", () => {
    let calculate
    beforeEach(async () => {
        const Calculator = await ethers.getContractFactory('Calculator')
        calculate = await Calculator.deploy("add",3,2)
    })

    it ("adds two numbers", async () => {

        const result = await calculate.var1()
        expect(result).to.equal(3)
    })
})