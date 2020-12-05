pragma solidity ^0.5.1;

contract Storage {
    string public data;

    function setData(string memory _data) public returns(bool){
        data = _data;
        return true;
    }

    function getData() public returns(string memory){
        return data;
    }
}