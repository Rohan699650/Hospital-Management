// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceptionistContract {
    address public receptionist;
    string public username = "admin";
    string public password = "12345";

    modifier onlyReceptionist() {
        require(msg.sender == receptionist, "Not authorized");
        _;
    }

    constructor() {
        receptionist = msg.sender; // Set the deployer as the receptionist
    }

    function checkLogin(string memory _username, string memory _password) public view returns (bool) {
        return (keccak256(abi.encodePacked(_username)) == keccak256(abi.encodePacked(username)) && 
                keccak256(abi.encodePacked(_password)) == keccak256(abi.encodePacked(password)));
    }
}
