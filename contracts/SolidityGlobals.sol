// SPDX-License-Identifier: MIT

/** 
    Learning with examples for myself
    Units and Globally Available Variables 
    https://docs.soliditylang.org/en/v0.8.11/units-and-global-variables.html
*/ 
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

/**
    @dev Ancestor of all contracts
    It is to keep children safe (but how?), mortal, receiver, ownable, ... 
 */
contract SkeletonContract is Ownable{
    
    using SafeMath for uint;
    uint public balance = 0;

    /**
        @dev A proper receive function - TODO: which should be written more properly!
     */
    receive() external payable {
        balance = balance.add(msg.value);
    }

    
    /**
        @dev Kills the contract and withdraws all eth to the owner
     */
    function destructContract() public onlyOwner {
        // cast address to payable
        address payable addr = payable(address(owner()));
        selfdestruct(addr);
    }
}

contract UnitsExamples {

}
