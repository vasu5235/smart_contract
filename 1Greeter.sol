// Contract creator can create and set the greeting (string), anyone can view the greeting.
pragma solidity ^0.4.11;

contract Greeter{
    address public creator;
    string public greeting;
    event GreetingChanged(address creator, address changed_by, string changed_to); //Log every change
    
    function Greeter(string set_string){
        creator = msg.sender;
        greeting = set_string; //Set greeting
    }
    
    function getGreeting() constant returns (string){
        return greeting; // Anyone can view the greeting
    }
    
    function changeGreeting(string set_string) returns (bool){
        if(msg.sender != creator) return false; //Only creator can change the greeting
        greeting = set_string;
        GreetingChanged(creator, msg.sender,set_string);
        return true;
    }

    function getBlockNumber() constant returns (uint){
        return block.number;    //return block number of current block === length of blockchain? :P
    }

    //Enough of this contract
    function kill(){
        if(msg.sender == creator)
            suicide(creator);
    }
}