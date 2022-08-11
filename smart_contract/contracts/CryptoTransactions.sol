// SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.9;

//transactions object
contract CryptoTransactions {
    uint256 transactionCount; //track no. of transactions

    //define function for transfering the crypto
    event Transfer(address from, address recipient, uint256 amount, string message, uint256 timestamp, string keyword);

    //structure of the transfer
    struct TransferStruct {
        address sender;
        address recipient;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;// an array of all transactions

    // store all transactions performed
    // main function
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));


        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword); //perform the transfer

    }

    //returns transactions
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }


    //return number of transactions
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}