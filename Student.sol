
//SPDX-License-Identifier: GPL-3.0       

pragma solidity 0.8.7;


contract Bank{
    address public owner;
    mapping(address => uint256)private userbalance;

    constructor(){
        owner= msg.sender;

    }

    modifier OnlyOwner(){
        require(msg.sender == owner ,'You are Not Owner of this Contract');
        _;
    }

    function Deposite() public payable returns(bool){
        require(msg.value > 10 wei , 'Please deposite at least 10 wei');
        userbalance[msg.sender]+=msg.value;
        return true;
    }

    function widrow(uint256 _ammount) public payable returns(bool){
        require( _ammount <= userbalance[msg.sender] , 'You Did Not have sufficient balance');
        userbalance[msg.sender] -= _ammount;
        payable (msg.sender).transfer(_ammount);
        return true;
    }

    function getContractBalance() public view OnlyOwner returns(uint256){
        return address(this).balance;
    }


}

