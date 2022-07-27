require("@nomiclabs/hardhat-ethers");
const { ethers } = require("hardhat");

async function deploy() {
    const VotingContract = await ethers.getContractFactory("Voting");
    const ContractResponse = await VotingContract.deploy();
    await ContractResponse.deployed();

    return ContractResponse;
}

async function printName(Contract) {
    console.log(await Contract.name())
}

deploy().then(printName)