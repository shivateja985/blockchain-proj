// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Calculator {
    // contrct code
    // crud validate
    string public name;
    uint public var1;
    uint public var2;
    uint  res;

    constructor(string memory _iname, uint _ivar1, uint _ivar2){
        name= _iname;
        var1 = _ivar1;
        var2 = _ivar2;
    }


    function calculate () public returns (uint total) {
       if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("add"))) {
        res= var1+var2;
        return res;
       }
       if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("minus"))) {
        res= var1-var2;
        return res;
       }

    }
    

    function getres() public view returns(uint) {
        return res;
    }



}