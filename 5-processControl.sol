// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 流程控制
contract ProcessCtl {
    function ctl1(uint a) public pure returns (uint) {
        if (a > 0 && a < 2) {
            return 1;
        } else if (a >= 2 && a < 8) {
            return 2;
        } else {
            return 0;
        }
    }
    function ctl2(uint a)public pure returns(uint){
        return a>10?a:0;
    }
}
