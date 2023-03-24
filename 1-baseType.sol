// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;
contract baseType {
    /*
    *值类型
    */
    bool public isRight = true;
    int256 public key = -1;
    uint256 public id = 1;
    // fixed public float;
    // 地址类型
    address public nameReg;
    // 定长字节数组
    bytes1 public arr1;

    // bytes:
    // 变长字节数组，参见 数组。它并不是值类型。
    bytes public arr = new bytes(3);
    // string:
    // 变长 UTF-8 编码字符串类型，参见 数组。并不是值类型。
    string public str = "hello,world";


    // 枚举类型
    enum ActionChoices{GoLeft,GoRight,GoStraight,GoStill} 
    ActionChoices public choice;
    // 函数类型
    function add(int a,int b) public pure returns (int){
        return a+b;
    }




}