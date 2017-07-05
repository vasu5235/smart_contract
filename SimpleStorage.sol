pragma solidity ^0.4.0;
// Stores a number (gas consumed)
// Returns the number (gas is not consumed, because of "constant"
contract SimpleStorage {
    uint storedData;

    function set(uint x) {
        storedData = x;
    }

    function get() constant returns (uint) {
        return storedData*2;
    }
}
