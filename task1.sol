// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    // Declaring four different types of variables
    int256 private myInt;
    bool private myBool;
    string private myString;
    address private myAddress;

    // Set and get functions for myInt
    function setMyInt(int256 _myInt) public returns (int256) {
        myInt = _myInt;
        return myInt;
    }

    function getMyInt() public view returns (int256) {
        return myInt;
    }

    // Set and get functions for myBool
    function setMyBool(bool _myBool) public returns (bool) {
        myBool = _myBool;
        return myBool;
    }

    function getMyBool() public view returns (bool) {
        return myBool;
    }

    // Set and get functions for myString
    function setMyString(string memory _myString) public returns (string memory) {
        myString = _myString;
        return myString;
    }

    function getMyString() public view returns (string memory) {
        return myString;
    }

    // Set and get functions for myAddress
    function setMyAddress(address _myAddress) public returns (address) {
        myAddress = _myAddress;
        return myAddress;
    }

    function getMyAddress() public view returns (address) {
        return myAddress;
    }
}
