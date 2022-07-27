// SPDX-License-Identifier: MITS
pragma solidity ^0.8.9;

contract Voting {
    uint256[2] public candidates;

    constructor() {}

    function name() public pure returns (string memory) {
        return "Voting System 1.0";
    }

    function addVote(uint256 _votes) public payable {
        candidates[msg.value] += _votes;
    }

    function getVotesCandidate1() external view returns (uint256) {
        return candidates[0];
    }

    function getVotesCandidate2() external view returns (uint256) {
        return candidates[1];
    }
}
