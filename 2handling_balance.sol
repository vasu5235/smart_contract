pragma solidity ^0.4.10;

/**
 * This contract does this and that...
 */
contract HandleBalance {
	address public creator;
	uint public initial_creator_balance;

	function HandleBalance () {
		creator = msg.sender;
		initial_creator_balance = creator.balance;
	}	

	function CreationBalance() constant returns (uint){
		return initial_creator_balance;
	}

	function CurrentBalance() constant returns (uint){
		return creator.balance;
	}
}

