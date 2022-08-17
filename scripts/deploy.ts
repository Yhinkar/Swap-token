import { ethers } from "hardhat";


async function main() {

  // const lockedAmount = ethers.utils.parseEther("1");

  const StakingCont = await ethers.getContractFactory("Staking");
  const staking = await StakingCont.deploy();

  await staking.deployed();
  console.log("God when", staking.address)

}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});