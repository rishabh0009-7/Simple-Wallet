// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract wallet {
    uint amount ;
    address public owner ;

    constructor (){
        owner = msg.sender;

    }


    function deposit() public payable {
        amount += msg.value ;

    }


    function withdraw(address payable _receipent ) public payable {
        require (owner == msg.sender ,"withdraw only if owner ");
        _receipent.transfer(amount );
        amount = 0;


    }


    function getBalance()  public view returns(uint256) {
        return address(this).balance ;

    }


}