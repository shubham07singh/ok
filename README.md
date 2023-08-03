# Assessment Smart Contract

This is a simple Ethereum smart contract written in Solidity. The contract is named `Assessment` and provides functionality to manage an account balance, allowing deposits and withdrawals.

## Overview

The contract has the following features:

1. **Constructor**: The contract constructor is called when deploying the smart contract to the Ethereum blockchain. It takes an initial balance as an argument and sets the contract deployer's address (`msg.sender`) as the owner of the contract.

2. **Events**: The contract defines two events:
   - `Deposit`: This event is emitted when a deposit is made to the contract, indicating the amount deposited.
   - `Withdraw`: This event is emitted when a withdrawal is made from the contract, indicating the amount withdrawn.

3. **Owner and Balance**: The contract keeps track of the `owner` (the address that deployed the contract) and the `balance` (the current account balance).

4. **Functions**:
   - `getBalance()`: A view function that allows anyone to query the current balance of the contract.
   - `deposit(uint256 _amount)`: A function that allows the owner to deposit funds into the contract.
   - `withdraw(uint256 _withdrawAmount)`: A function that allows the owner to withdraw funds from the contract.

5. **Error Handling**:
   - The contract defines a custom error called `InsufficientBalance`, which is used to handle cases where the owner tries to withdraw an amount greater than the contract's current balance.

## Prerequisites

Make sure you have the following installed before interacting with this contract:

- An Ethereum wallet or a browser extension like MetaMask to deploy and interact with smart contracts.
- Solidity compiler compatible with version 0.8.9.

## Deployment

To deploy the `Assessment` contract, follow these steps:

1. Compile the contract using a Solidity compiler compatible with version 0.8.9.
2. Deploy the contract to the Ethereum blockchain using your preferred Ethereum wallet or development environment.

## Contract Usage

Once the contract is deployed, you can interact with it using the following functions:

1. **getBalance()**: Call this function to get the current balance of the contract.

2. **deposit(uint256 _amount)**: Use this function to deposit funds into the contract. Only the contract owner (the address that deployed the contract) can call this function. Provide the amount you want to deposit as an argument.

3. **withdraw(uint256 _withdrawAmount)**: Use this function to withdraw funds from the contract. Only the contract owner can call this function. Provide the amount you want to withdraw as an argument. If the contract balance is less than the withdrawal amount, the transaction will revert with an `InsufficientBalance` error.

## Example

Here's an example of how you can interact with the contract using a Solidity script:

```solidity
// Assume the contract address and ABI are available
Assessment contractInstance = Assessment(contractAddress);

// Deposit 1 ether (wei) into the contract
contractInstance.deposit{value: 1 ether}(1 ether);

// Withdraw 0.5 ether (wei) from the contract
contractInstance.withdraw(0.5 ether);

// Get the current balance of the contract
uint256 currentBalance = contractInstance.getBalance();
```

Remember to replace `contractAddress` with the actual address of the deployed contract.

## License

This smart contract is provided under the UNLICENSED license, meaning there are no usage restrictions or obligations. You are free to use it as you see fit.

**Note:** Smart contracts involve real financial transactions and changes to the blockchain state. Be cautious while interacting with them, especially on the mainnet. Always verify contract code and potential risks before proceeding.


# Assessment Smart Contract

This is a simple Ethereum smart contract written in Solidity. The contract is named `Assessment` and provides functionality to manage an account balance, allowing deposits and withdrawals.

## Overview

The contract has the following features:

1. **Constructor**: The contract constructor is called when deploying the smart contract to the Ethereum blockchain. It takes an initial balance as an argument and sets the contract deployer's address (`msg.sender`) as the owner of the contract.

2. **Events**: The contract defines two events:
   - `Deposit`: This event is emitted when a deposit is made to the contract, indicating the amount deposited.
   - `Withdraw`: This event is emitted when a withdrawal is made from the contract, indicating the amount withdrawn.

3. **Owner and Balance**: The contract keeps track of the `owner` (the address that deployed the contract) and the `balance` (the current account balance).

4. **Functions**:
   - `getBalance()`: A view function that allows anyone to query the current balance of the contract.
   - `deposit(uint256 _amount)`: A function that allows the owner to deposit funds into the contract.
   - `withdraw(uint256 _withdrawAmount)`: A function that allows the owner to withdraw funds from the contract.

5. **Error Handling**:
   - The contract defines a custom error called `InsufficientBalance`, which is used to handle cases where the owner tries to withdraw an amount greater than the contract's current balance.

## Prerequisites

Make sure you have the following installed before interacting with this contract:

- An Ethereum wallet or a browser extension like MetaMask to deploy and interact with smart contracts.
- Solidity compiler compatible with version 0.8.9.

## Deployment

To deploy the `Assessment` contract, follow these steps:

1. Compile the contract using a Solidity compiler compatible with version 0.8.9.
2. Deploy the contract to the Ethereum blockchain using your preferred Ethereum wallet or development environment.

## Contract Usage

Once the contract is deployed, you can interact with it using the following functions:

1. **getBalance()**: Call this function to get the current balance of the contract.

2. **deposit(uint256 _amount)**: Use this function to deposit funds into the contract. Only the contract owner (the address that deployed the contract) can call this function. Provide the amount you want to deposit as an argument.

3. **withdraw(uint256 _withdrawAmount)**: Use this function to withdraw funds from the contract. Only the contract owner can call this function. Provide the amount you want to withdraw as an argument. If the contract balance is less than the withdrawal amount, the transaction will revert with an `InsufficientBalance` error.

## Example

Here's an example of how you can interact with the contract using a Solidity script:

```solidity
// Assume the contract address and ABI are available
Assessment contractInstance = Assessment(contractAddress);

// Deposit 1 ether (wei) into the contract
contractInstance.deposit{value: 1 ether}(1 ether);

// Withdraw 0.5 ether (wei) from the contract
contractInstance.withdraw(0.5 ether);

// Get the current balance of the contract
uint256 currentBalance = contractInstance.getBalance();
```

Remember to replace `contractAddress` with the actual address of the deployed contract.

## License

This smart contract is provided under the UNLICENSED license, meaning there are no usage restrictions or obligations. You are free to use it as you see fit.

**Note:** Smart contracts involve real financial transactions and changes to the blockchain state. Be cautious while interacting with them, especially on the mainnet. Always verify contract code and potential risks before proceeding.
