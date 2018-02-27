pragma solidity ^0.4.19;

contract SimpleStorage {
    uint myVariable;

    event Odd();
    event Even();

    function set(uint x) public {
	myVariable = x;
	if(x % 2 == 0) {
	    Even();
	}
	else {
	    Odd();
	}
    }

    function get() constant public returns (uint) {
        return myVariable;
    }
}
