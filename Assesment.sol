// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Assessment {
    address payable public owner;
    uint256 public balance;

    event Deposit(address indexed depositor, uint256 amount);
    event Withdraw(address indexed withdrawer, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner of this account");
        _;
    }

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }

    receive() external payable {
        // Update contract balance when receiving ether
        balance += msg.value;
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }

    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        uint256 _previousBalance = balance;
        balance += msg.value;
        assert(balance == _previousBalance + msg.value);
        emit Deposit(msg.sender, msg.value);
    }

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function withdraw(uint256 _withdrawAmount) public onlyOwner {
        uint256 _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance(balance, _withdrawAmount);
        }
        balance -= _withdrawAmount;
        assert(balance == _previousBalance - _withdrawAmount);

        // Transfer funds to the contract owner
        (bool success, ) = owner.call{value: _withdrawAmount}("");
        require(success, "Withdrawal failed");

        emit Withdraw(owner, _withdrawAmount);
    }

    function transfer(address _recipient, uint256 _amount) public onlyOwner {
        require(_recipient != address(0), "Invalid recipient address");
        require(_amount > 0, "Amount must be greater than zero");
        require(balance >= _amount, "Insufficient balance");

        uint256 _previousBalance = balance;
        balance -= _amount;
        assert(balance == _previousBalance - _amount);

        // Transfer funds to the recipient address
        (bool success, ) = _recipient.call{value: _amount}("");
        require(success, "Transfer failed");

        emit Transfer(_recipient, _amount);
    }

    function destroyContract() public onlyOwner {
        emit ContractDestroyed(owner, balance);
        selfdestruct(owner);
    }
}
