// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ReceptionistContract.sol";
import "./PatientContract.sol";

contract HospitalManagement {

    ReceptionistContract public receptionistContract;
    PatientContract public patientContract;

    constructor(address _receptionistContract, address _patientContract) {
        receptionistContract = ReceptionistContract(_receptionistContract);
        patientContract = PatientContract(_patientContract);
    }

    modifier onlyReceptionist() {
        require(receptionistContract.checkLogin("admin", "12345"), "Not authorized");
        _;
    }

    // Receptionist can add a new patient (only if patient doesn't exist)
    function addPatient(string memory name, string memory phoneNumber, string memory dateOfBirth, string memory medicalRecords, string memory nextVisitDate) public onlyReceptionist {
        patientContract.addPatient(name, phoneNumber, dateOfBirth, medicalRecords, nextVisitDate);
    }

    // Receptionist can update an existing patient's record
    function updatePatient(string memory phoneNumber, string memory medicalRecords, string memory nextVisitDate) public onlyReceptionist {
        patientContract.updatePatient(phoneNumber, medicalRecords, nextVisitDate);
    }

    // Patient can view their own record
    function viewRecord(string memory phoneNumber, string memory dob) public view returns (string memory, string memory, string memory) {
        return patientContract.viewRecord(phoneNumber, dob);
    }
}
