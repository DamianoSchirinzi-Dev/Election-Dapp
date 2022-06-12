// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Test {

    struct Payee {
        address addr;
        uint amountPayed;
    }
    
    mapping (uint => Payee) payees;
    mapping (address => uint) recievers;

    function payAddress(address payable _payee) public payable {
        require(msg.value > 0);
        _payee.transfer(msg.value);
    }

    function getPayee(uint _key) public view returns(uint){
        return payees[_key].amountPayed;
    }

    function getReciever(address reciever) public view returns(uint) {

    }
}
