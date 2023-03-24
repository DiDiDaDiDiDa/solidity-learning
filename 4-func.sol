// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

    contract Func {
        function add(uint a,uint b)public pure returns(uint){
            return a+b;
        }
        function sub(uint a,uint b)public pure returns(uint){
            return a-b;
        }
        function mul(uint a,uint b)public pure returns(uint){
            return a*b;
        }
        function div(uint a,uint b)public pure returns(uint){
            return a/b;
        }
        function getName()public pure returns(string memory){
            return _getName();
        }
        function _getName()private pure returns(string memory){
            return "Hello,world!";
        }
    }