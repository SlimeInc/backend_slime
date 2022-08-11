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

    
}