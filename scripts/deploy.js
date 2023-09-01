const { ethers } = require("hardhat");

async function main() {
  const NFTMint = await ethers.getContractFactory("NFTMint");
  
  console.log("Deploying NFTMint contract...");
  
  const nftMint = await NFTMint.deploy();
  await nftMint.deployTransaction.wait(1); // Wait for 1 confirmation (adjust as needed)

  console.log("NFTMint contract deployed to:", nftMint.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error("Error during deployment:", error);
    process.exit(1);
  });
