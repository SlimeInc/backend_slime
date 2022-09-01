const main = async () => {

  const CryptoTransactions = await hre.ethers.getContractFactory("CryptoTransactions");
  const transactions = await CryptoTransactions.deploy();

  await transactions.deployed();
  console.log("Transactions deployed to: ", transactions.address); 
}

//address transactions was deployed to: 0xD2CC21a27ad2E773e4E2D2fae570DaC5C0f81727

const runMain = async () => {
  try {
    await main();
    process.exit(0)
  } catch (error) {
    console.error(error)
    process.exit(1)
  }
}

runMain()
