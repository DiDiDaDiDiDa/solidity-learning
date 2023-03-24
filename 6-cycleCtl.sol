// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 循环控制
contract ProcessCtl {
    event Dump(uint n);
    function ctl1(uint n)public returns(uint){
        for(uint i;i<n;i++){
            emit Dump(i);
        }
        return n;
    }
    function ctl2(uint n)public {
        uint i;
        while(i<n){
            emit Dump(i);
            i++;
        }
    }
    
}
