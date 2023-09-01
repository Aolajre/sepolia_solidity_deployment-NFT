require("@nomicfoundation/hardhat-toolbox");
require('@openzeppelin/hardhat-upgrades');
const dotenv = require("dotenv");
dotenv.config();

module.exports = {
  solidity: "0.8.19",
  networks: {
    Sepolia: {
      url: process.env.RPCURL,
      accounts: [process.env.PRIVATE_KEY], // Make sure PRIVATE_KEY is enclosed in quotation marks
    },
  },  
  etherscan: {
    apiKey: process.env.ETHERSCAN_KEY,
  },
};

