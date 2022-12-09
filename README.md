# Assignment 2: Oracles

## Instructions 

The repository for assignment #2 will be released on Saturday morning (November 26), so you can get started on in over the weekend. The assignment is due on December 2 (Friday) at midnight. That gives you 1 week. 

Assignment #2 repo will have a PiggyBank contract for you to update. It will be a functioning contract that meets the requirements of assignment #1.

Please note: changes or new commits made to your assignment #1 repo after midnight on Friday November 25 will not be accepted.

Also note: your contract for assignment #1 may look different and that’s ok. Marks will be awarded for functional code and it is expected that implementation may vary.

The steps for assignment #2 are:

1.	Add a function to the PiggyBank contract (will be provided to you in assignment 2 repo) to get the value of the piggybank balance in USD (cents). So 100 = $1USD. Note you will have to use an oracle to complete this assignment. Chainlink has an oracle setup on Goerli that you can use. Assume 1GoerliETH = 1ETH (mainnet). Check out the chainlink tutorial from class on November 24 to find the contract information and the chainlink module to import if you need help with where to start. 
2.	Test your code, deploy your contract on Goerli, and again update your code with a comment near the top indicating your new and improved PiggyBank contract address. If you like, you can put any amount of Goerli in your deployed contract.
3.	Edit this file (README.md) to answer the questions below in your own words. 
4.	Make sure your updated code and README file are located on your main branch so I can mark. 

## Questions

Answer the following questions in 1-2 paragraphs in order to complete the assignment. 

### 1. Why are oracles necessary on the blockchain?
     Oracle enable blockchains to find and access outside information for on-chain smart contracts.Oracle work as a bridge between interaction that occurs on the blockchain and off chain data.The relationship between oracles and blockchains is reciprocal. Oracles can receive on-chain data to distribute to external applications.Decentralized oracles solve the off-chain data problem by granting blockchains access to real-world information without introducing a single point of failure.


### 2. How does Chainlink ensure oracle data is trustworthy? 
Incorporate decentralization as an active part of the security and reliability guarantees provided by the oracle. Aggregate from multiple independent nodes to ensure the oracle mechanism is manipulation-resistant and highly available when delivering data to contracts. Source from multiple high-quality data providers without sacrificing quality to bring additional decentralization to the data source level.Here are four key features implemented throughout Chainlink Data Feeds that should be applied to all decentralized oracle networks looking to ensure data quality.
1.High-Quality Data from Premium Data Providers.
2.Decentralization of High-Quality Node Operators.
3.Decentralization of High-Quality Data Sources
4.Open-Source Visualizations and Monitoring

### 3. Why might pseudorandom number generation using keccak256 create a vulnerability for a smart contract? 
Timestamp vulnerability is quite common. Usually, the timestamp of a block is accessed via block.timestamp but this timestamp can be manipulated by miners, leading to influencing the outcome of some function that relies on timestamps. The timestamp is used as a source of randomness in lottery games to select the next winner. Thus, it might be possible for a miner to modify the timestamp in such a way that its chances of becoming the next winner increase.
Thats why keccak256 create a vulnerability for a smart contract.



### 4. List four cases that would require the use of an oracle. 
1.Bank
2.Games
3.Token distribution
4.




