// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PatientContract {
    struct Patient {
        string name;
        string phoneNumber;
        string dateOfBirth;
        string medicalRecords;
        string nextVisitDate;
    }

    mapping(string => Patient) public patientRecords; // Maps phone number to patient record

    // Add a new patient record, only if the patient doesn't already exist
    function addPatient(string memory name, string memory phoneNumber, string memory dateOfBirth, string memory medicalRecords, string memory nextVisitDate) public {
        require(bytes(patientRecords[phoneNumber].phoneNumber).length == 0, "Patient already exists! Use update for existing patient.");
        
        patientRecords[phoneNumber] = Patient(name, phoneNumber, dateOfBirth, medicalRecords, nextVisitDate);
    }

    // Update an existing patient record
    function updatePatient(string memory phoneNumber, string memory medicalRecords, string memory nextVisitDate) public {
        require(bytes(patientRecords[phoneNumber].phoneNumber).length != 0, "Patient does not exist!");
        
        Patient storage patient = patientRecords[phoneNumber];
        patient.medicalRecords = medicalRecords;
        patient.nextVisitDate = nextVisitDate;
    }

    // View a patient's record
    function viewRecord(string memory phoneNumber, string memory dob) public view returns (string memory, string memory, string memory) {
        require(keccak256(abi.encodePacked(patientRecords[phoneNumber].dateOfBirth)) == keccak256(abi.encodePacked(dob)), "Date of birth mismatch");
        Patient memory patient = patientRecords[phoneNumber];
        return (patient.medicalRecords, patient.nextVisitDate, patient.name);
    }
}
