const hre = require("hardhat");

async function main() {

  const Dao = await hre.ethers.getContractFactory("DaoIt");
  const dao = await Dao.deploy();

  await dao.deployed();

  console.log("Dao Contract deployed to:", dao.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
