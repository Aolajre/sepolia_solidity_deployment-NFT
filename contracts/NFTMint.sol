// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.19;

// Import OpenZeppelin ERC721 and Ownable contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTMint is ERC721, Ownable {
    // State variables
    uint256 public mintPrice; //price of NFT mint
    uint256 public totalSupply; //current number of NFTs minted for a wallet address
    uint256 public maxSupply; //total number of NFTs in the collection
    uint256 public maxPerWallet; //max number of NFTs per wallet
    bool public isPublicMintEnabled;
    string internal baseTokenUrl;
    address payable public withdrawWallet;
    mapping(address => uint256) public walletMints; //keep track of how many NFTs wallet has minted

    // Constructor
    constructor() payable ERC721("NFT Minting", "NFT") {
        mintPrice = 0.02 ether;
        totalSupply = 0;
        maxSupply = 1000;
        maxPerWallet = 3;
        isPublicMintEnabled = true; // Enable minting by default
    }

    /*// Mint function
    function mint(uint256 quantity_) public payable {
        require(isPublicMintEnabled, 'Minting not enabled');
        require(msg.value == quantity_ * mintPrice, 'Wrong mint value');
        require(totalSupply + quantity_ <= maxSupply, 'Sold out');
        require(walletMints[msg.sender] + quantity_ <= maxPerWallet, 'Exceeds max wallet minting limit');

        // Loop to mint the specified quantity of tokens
        for (uint256 i = 0; i < quantity_; i++) {
            uint256 newTokenId = totalSupply + 1;
            totalSupply++;
            _safeMint(msg.sender, newTokenId); // Safely mint the token
        }
    }

     // Set whether public minting is enabled
    function setIsPublicMintEnabled(bool isPublicMintEnabled_) external onlyOwner {
        isPublicMintEnabled = isPublicMintEnabled_;
    }

    // Set the base token URI for metadata
    function setBaseTokenUri(string calldata baseTokenUri_) external onlyOwner {
        baseTokenUrl = baseTokenUri_;
    } 

    // Override the base token URI function to provide metadata location
    function _baseURI() internal view override returns (string memory) {
    require(_exists(tokenId_), 'Sorry, token does not exist');
    return string(abi.encodePacked(baseTokenUri, Strings.toString(tokenId_), ".json"));
    }  

    function withdraw() external onlyOwner {
        (bool success, ) = withdrawWallet.call{ value: address(this).balance}('');
        require(success, 'withdraw failed');
    } */
}