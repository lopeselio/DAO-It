//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IdaoContract {
    function balanceOf(address, uint256) external view returns (uint256);
}
contract DAOIt {
    address public owner;
    uint256 nextProposal;
    uint256[] public validTokens;
    IdaoContract daoContract;  

    constructor() {
        owner = msg.sender;
        nextProposal = 1;
        daoContract = IdaoContract();
        validTokens = [];
    }
}
