// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 函数修改器
contract FunctionModifier {
    modifier MustLess10(uint a){
        require(a<10,"args must less 10!");
        _;
    }
    function Test(uint a) public MustLess10(a) pure returns(uint){
        return a;
    }


}
