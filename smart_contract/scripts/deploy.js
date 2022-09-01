const main = async () => {

  const CryptoTransactions = await hre.ethers.getContractFactory("CryptoTransactions");
  const transactions = await CryptoTransactions.deploy();

  await transactions.deployed();
  console.log("Transactions deployed to: ", transactions.address); 
}



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
