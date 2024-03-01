//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract DigitalCertificateIssuer {

    mapping(address => mapping(string => bool)) private issuedCertificates;

    function issueCertificate(address receipient, string memory certificateHash) public {
        require(!issuedCertificates[receipient][certificateHash], "Certificate already issued");
        issuedCertificates[receipient][certificateHash] = true;
    }

    function verifyCertificate(address recipient, string memory certificateHash) public view returns(bool) {
        return issuedCertificates[recipient][certificateHash];
    }
}