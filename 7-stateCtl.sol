// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 状态控制
contract StateCtl {
   uint public id;
   function setId(uint v)public returns(bool){
       id=v;
       return true;
   }
   function getId()public view returns(uint){
       return id;
   }
}
