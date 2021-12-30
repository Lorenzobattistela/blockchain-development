//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract donateMoney {
    address public owner;
    uint public totalDonations;
    uint public value;

    constructor (uint _value){
        owner = payable(msg.sender);
        value = _value;
    }

    function getTotalDonations() public view returns (uint) {
        return totalDonations;
    }

    function donate() public payable {
    (bool success,) = owner.call{value: value}("");
    require(success, "Failed to send money");
  }


}
