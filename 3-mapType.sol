// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract mapType {
   mapping (address => uint256) private _balances;
    mapping (address => mapping (address => uint256)) private _allowances;

}