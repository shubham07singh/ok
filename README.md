# Assessment Smart Contract

This is a Solidity smart contract named "Assessment" that manages a simple financial system allowing deposits, withdrawals, and transfers. It is designed to be used on the Ethereum blockchain with a Solidity version of 0.8.9 or higher.

## Overview

The Assessment contract has the following features:

- Maintains an owner address that has exclusive rights to deposit, withdraw, transfer, and destroy the contract.
- Allows anyone to deposit Ether to increase the contract balance.
- Allows the owner to withdraw Ether from the contract balance.
- Allows the owner to transfer Ether from the contract balance to a specified recipient address.
- Allows the owner to destroy the contract, transferring any remaining balance to the contract owner.

## Contract Functions

### Constructor

The constructor function initializes the contract and sets the contract owner and initial balance. It takes an initial balance as an argument and sets it as the starting balance for the contract.

### Deposit Function

The deposit function allows any user to deposit Ether into the contract. It checks if the deposited amount is greater than zero and updates the contract balance accordingly. It emits a "Deposit" event to notify observers about the deposit.

### Withdraw Function

The withdraw function allows the contract owner to withdraw a specified amount of Ether from the contract balance. It checks if the contract has sufficient balance to perform the withdrawal. If not, it reverts with an "InsufficientBalance" error. If the balance is sufficient, the function subtracts the withdrawal amount from the contract balance and transfers the Ether to the contract owner. It emits a "Withdraw" event to indicate the successful withdrawal.

### Transfer Function

The transfer function allows the contract owner to transfer a specified amount of Ether from the contract to a given recipient address. It checks if the recipient address is valid, the transfer amount is greater than zero, and the contract has sufficient balance. If all conditions are met, the function subtracts the transfer amount from the contract balance and transfers the Ether to the recipient address. It emits a "Transfer" event to indicate the successful transfer.

### Destroy Contract Function

The destroyContract function allows the contract owner to self-destruct the contract and transfer any remaining balance to the contract owner. It emits a "ContractDestroyed" event to signify the destruction of the contract.

## Events

The contract emits the following events:

- `Deposit`: Emitted when Ether is deposited into the contract. It includes the depositor's address and the deposited amount.
- `Withdraw`: Emitted when the contract owner withdraws Ether from the contract. It includes the owner's address and the withdrawn amount.
- `Transfer`: Emitted when the contract owner transfers Ether to a recipient address. It includes the recipient's address and the transferred amount.
- `ContractDestroyed`: Emitted when the contract is self-destructed. It includes the contract owner's address and the remaining balance in the contract.

## License

This smart contract is provided under the "UNLICENSED" license. You are free to use, modify, or distribute it without any restrictions.

Please note that deploying and interacting with smart contracts on the Ethereum blockchain involves real Ether transactions. Exercise caution and test thoroughly in a development or test environment before deploying to the mainnet.

**Note:** The Solidity code provided is based on the knowledge available up to September 2021. There might have been changes or updates to the Solidity language or best practices since then. Always refer to the latest Solidity documentation and security guidelines when working with smart contracts.

Thank you 
Shubham kumar
