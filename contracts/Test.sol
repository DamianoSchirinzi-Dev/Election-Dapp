// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Test {

    struct Payee {
        address addr;
        uint amountPayed;
    }
    
    mapping (uint => Payee) payees;
    mapping (address => uint) recievers;

    modifier checkFunds(uint _amount) { 
        require(msg.sender.balance > _amount);
        _;
    }

    function payAddress(address payable _payee, uint _amount) public payable checkFunds(_amount){
        _payee.transfer(_amount);
    }

    function getPayee(uint _key) public view returns(uint){
        return payees[_key].amountPayed;
    }
}
