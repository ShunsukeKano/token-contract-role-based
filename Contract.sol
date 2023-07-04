// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/access/Ownable.sol";

// Defined an interface called IToken with the following functions declaration having mandatory external visibility.
interface IToken {
    // Declared a function called transfer that takes two parameters: _receipient(an address) and _amount(a uint) and returns bool.
    function transfer(address recipient, uint256 amount) external returns (bool);
    // Declared a function called totalSupply that returns uint.
    function totalSupply() external view returns (uint256);
    // Declared a function called balanceOf that takes one parameter: _owner(an address) and returns uint.
    function balanceOf(address _owner) external view returns (uint256);
}

// Created a contract called StandardToken and inherit IToken as well as OpenZeppelin’s Ownable.
contract StandardToken is IToken, Ownable {
        // Added a mapping variable called _balances to store the balance of tokens in all accounts.
        mapping(address => uint256) public _balances;
        // Added a uint variable called _totalSupply to store the number of tokens in existence.
        uint256 public _totalSupply;
        // Added a string variable called  _name to store the name of the token.
        string public _name;
        // Added a string variable called  _symbol to store the symbol of the token. 
        string public _symbol;
 
        // Created a function constructor that initializes _totalSupply, _name, and  _symbol. 
        constructor(uint256 totalSupplyValue, string memory nameValue, string memory symbolValue) {
            _totalSupply = totalSupplyValue;
            _name = nameValue;
            _symbol = symbolValue;
    }

    // Created a function called mint which can only be called by the owner.
    function mint(address _owner, uint256 amount) public onlyOwner {
        // Added a logic that adds amount to _totalSupply and assigns amount to the _owner account. 
        _totalSupply += amount;
        _balances[_owner] += amount;
    }
    
    // Implemented the transfer function with a function signature.
    function transfer(address recipient, uint256 amount) public returns (bool) { 
        // Used the logic from previous assigntmnet
        _balances[msg.sender] -= amount;
        _balances[recipient] += amount;
        return true;
    }

    // Function signatures below
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return _balances[_owner];
    }
}