NFT Minting Contract

This is a successful Ethereum smart contract project that allows users to mint Non-Fungible Tokens (NFTs) on the Ethereum blockchain. The contract is built using Solidity and leverages the OpenZeppelin ERC721 standard for NFTs.

Table of Contents
Overview
Features
Getting Started
Usage
Configuration
License
Overview
The NFT Minting Contract provides a simple yet powerful way for users to mint their own NFTs. It includes the following key features:

Features
Minting Functionality: Users can mint NFTs by sending Ether to the contract. The number of NFTs minted is determined by the amount of Ether sent, based on the specified mint price.

Supply Limits: The contract enforces limits on the total supply of NFTs and the maximum number of NFTs that can be minted by a single wallet. This ensures a controlled and fair distribution.

Public Minting: Public minting can be enabled or disabled by the contract owner. When enabled, anyone can mint NFTs. When disabled, only the contract owner can mint new tokens.

Metadata Support: The contract supports base token URI for metadata. Users can set the base URI, and this can be used to provide metadata for the minted NFTs.

Getting Started
To deploy and use this contract, follow these steps:

Clone this repository to your local environment.

Install the necessary dependencies:

bash
Copy code
npm install
Configure your Ethereum network and environment variables (see Configuration).

Deploy the contract to your chosen Ethereum network:

bash
Copy code
npx hardhat run scripts/deploy.js --network <network-name>
Interact with the deployed contract using your favorite Ethereum wallet or dApp.

Usage
To mint NFTs, users can call the mint function on the contract, providing the desired quantity and sending the required amount of Ether. Ensure that public minting is enabled and that you're sending the correct Ether value.

solidity
Copy code
function mint(uint256 quantity_) public payable {
    // Minting logic
}
Configuration
Configuration settings for deploying and using the contract can be found in the hardhat.config.js file and environment variables in a .env file. Here's a breakdown:

Networks: Configure your Ethereum network settings under the networks section. You need to specify the RPC URL and private key for the deployment account.

Etherscan API Key: You can also configure your Etherscan API key for verifying contract deployments on Etherscan.

Environment Variables: Create a .env file and set the following environment variables:

RPCURL: The RPC URL of your Ethereum network.
PRIVATE_KEY: The private key of the account for deploying the contract.
ETHERSCAN_KEY: Your Etherscan API key for contract verification.
License
This project is licensed under the Unlicensed license - see the LICENSE file for details.
----------------------------------------------------------------------------------------------

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
