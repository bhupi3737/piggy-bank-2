// CCMP 606 Assignment 1
// Piggy Bank Smart Contract w Oracle Interaction
// Author: <<Update me>>

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

// My contract address:  <<Update me>>

// Imports where needed

contract PiggyBank2 {

    // Set a savings goal 
    // Set any other variables you need
    address public immutable owner;
    uint public savingsGoal;
    mapping(address=>uint) public deposits;

    // Set up so that the owner is the person who deployed the contract.
    constructor() {
        owner = msg.sender;
        savingsGoal = 500;
    }
    
    // Create an event to emit once you reach the savings goal 
    event reachedSavingsGoal(uint balance);
    event depositMade(address depositor, uint value);
    event errorEmptyingTheBank(uint value);

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner.");
        _;
    }

    // Function to receive ETH, called depositToTheBank
    // -- Function should log who sent the ETH 
    // -- Function should check balance to know if you've reached savings goal and emit the event if you have. 
    function depositToTheBank() payable public {
        deposits[msg.sender] += msg.value;
        emit depositMade(msg.sender, msg.value);
        if (address(this).balance >= savingsGoal){
            emit reachedSavingsGoal(address(this).balance);
        }
    }

    // Function to return the balance of the contract, called getBalance
    // -- Note: you will need to use address(this).balance which returns the balance in Wei.
    // -- 1 Eth = 1 * 10**18 Wei
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Function to look up how much any depositor has deposited, called getDepositsValue
    function getDepositsValue() public view returns (uint) {
        return deposits[msg.sender];
    }

    // Function to withdraw (send) ETH, called emptyTheBank
    // -- Function should only send to you if you're the owner of the contract
    function emptyTheBank() public onlyOwner {
        (bool success, bytes memory data) = msg.sender.call{value: address(this).balance}("");
        if (!success){
            emit errorEmptyingTheBank(address(this).balance);
        }
    }

    receive() external payable {
        this.depositToTheBank();
    }

    fallback() external payable {
        this.depositToTheBank();
    }

    // Assignment 2: Add a function to get the value of the piggybank balance in USD (cents). So 100 = $1USD. 
    // Note you will have to use an oracle to complete this assignment. 
    // Chainlink has an oracle on Goerli that you can use. Assume 1GoerliETH = 1ETH (mainnet). 

}
