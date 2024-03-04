//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleVoting{

    mapping(uint => uint) private votes;
    mapping(address => bool) public hasVoted;

    function vote(uint candidateId) public {// you can put any candidate id (uint type) 
        require( !hasVoted[msg.sender],"have already voted");
        votes[candidateId] += 1;
        hasVoted[msg.sender] = true;
    }

    function getVotes(uint candidateId) public view returns (uint256){
        return votes[candidateId];
    }
}