// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 断言与错误
contract AssertError {
    // assert
  function assertTest(uint a )public pure returns(uint){
      assert(a<=10);
      return a;
  }
// revert
  function revertTest(uint a)public pure returns(uint){
      if(a>10) revert("args must less 10!");
      return a;
  }
//   require
  function requireTest3(uint a)public pure returns(uint){
      require(a<10,"args must less 10!");
      return a ;
  }

//   error
error MustLess10(uint a);
function errorTest(uint a)public pure returns(uint){
    if(a>10) revert MustLess10(a);
    return a;
}
}
