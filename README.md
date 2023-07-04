# Modular Token Contract with Role-Based Access Control (RBAC)
This smart contract instructs the creation of an interface and a contract leveraging the principles of modularity and Role-Based Access Control (RBAC). The students are tasked to define an interface 'IToken' comprising of the declarations for 'transfer', 'totalSupply', and 'balanceOf' functions, all of which require external visibility. Following this, a contract named 'StandardToken' is to be developed that inherits from both 'IToken' and OpenZeppelin's 'Ownable' contract. The 'StandardToken' contract should encompass four state variables: '_balances', '_totalSupply', '_name', and '_symbol', and its constructor function should initialize '_totalSupply', '_name', and '_symbol'. The contract must also feature a 'mint' function only accessible by the owner, which adds tokens to '_totalSupply' and assigns them to a specific account. Finally, the 'transfer' function as described in the interface is to be implemented, similar to the previously assigned task.
 
