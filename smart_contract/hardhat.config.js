require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/8fXJQjIjK8DahGL7SnROshHz1zXzXLFG',
      accounts: ['1cdf28df2bc63ecec20b47e65de4e05508a5529188d2a65627fc05db645c2d20'] //priv. key of metamask acct to be used for deployment
    }
  }
}