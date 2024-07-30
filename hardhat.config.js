require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.0",
  networks: {
    sepolia: {
      url: `https://sepolia.infura.io/v3/be96922b7ac1482f8892215b0a829946`,
      accounts: { mnemonic: "coffee where credit decorate toast exhibit jewel spell tower rack swallow annual" }
    }
  }
};