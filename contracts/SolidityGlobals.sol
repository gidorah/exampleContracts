// SPDX-License-Identifier: MIT

/** 
    Learning with examples for myself
    Units and Globally Available Variables 
    https://docs.soliditylang.org/en/v0.8.11/units-and-global-variables.html
*/
pragma solidity >=0.4.22 <0.9.0;

import "./Skeleton.sol";

contract UnitsExamples is SkeletonContract {
    /**
    @dev Does nothing actually 
    Only returns your input
    You should call it with some ether units to convert to wei

    Examples: 
    convertToWei(42 ether) returns '42000000000000000000'
    convertToWei(34 gwei)  returns '34000000000'
    convertToWei(1 wei)) returns '1'

    Truffle Console:
    $ let instance = await UnitsExamples.deployed()
    $ let result = await instance.convertToWei(web3.utils.toWei('42','ether'))
    $ result.toString()
    */
    function convertToWei(uint256 input) public pure returns (uint256) {
        return input;
    }

    /**
    @dev Converts ether to wei
    Example:
    etherToWei(42) returns '42000000000000000000'
    */
    function etherToWei(uint256 etherValue) public pure returns (uint256) {
        return etherValue * 1e18;
    }

    /**
    @dev Converts gwei to wei
    Example:
    gweiToWei(23) returns '23000000000'
    */
    function gweiToWei(uint256 gweiValue) public pure returns (uint256) {
        return gweiValue * 1e9;
    }

    /**
    @dev It is to show the use of time units 
    Sums block timestamp with input time
    */
    function calculateEpochAfterSomeTime(
        uint256 weeksAfter,
        uint256 daysAfter,
        uint256 hoursAfter,
        uint256 minutesAfter,
        uint256 secondsAfter
    ) public view returns (uint256) {
        return
            block.timestamp +
            (weeksAfter * 1 weeks) +
            (daysAfter * 1 days) +
            (hoursAfter * 1 hours) +
            (minutesAfter * 1 minutes) +
            (secondsAfter * 1 seconds);
    }
}
