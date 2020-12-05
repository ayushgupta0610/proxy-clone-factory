pragma solidity ^0.5.1;

import './Storage.sol';
import './CloneFactory.sol';

contract StorageFactory is CloneFactory {

    address public implementation;
    address public admin;
    address[] public cloneContracts;

    constructor(address _implementation) public {
        implementation = _implementation;
        admin = msg.sender;
    }

    function createStorage() public {
        require(msg.sender == admin, "Only admin can create storage");
        address clone = createClone(implementation);
        // Storage(clone).init(myArg);
        cloneContracts.push(clone);
    }

    function getAddress(uint256 i) view external returns (address cloneAddress){
        return cloneContracts[i];
    }
}