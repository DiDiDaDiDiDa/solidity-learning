// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 数组操作
contract ArraySection {
    uint[] public myArray;

   function pushTest(uint a)public returns(uint[] memory){
       myArray.push(a);
       return myArray;
   }
   function popTest()public returns(uint[] memory){
       myArray.pop();
       return myArray;
   }

   function getLen()public view returns(uint){
       return myArray.length;
   }
   function replace(uint k, uint v)public returns(bool){
       require(k<getLen(),"out of baund!");
       myArray[k]=v;
       return true;
   }

   event ArrayEle(uint ele);
   function loopArray()public{
       for(uint i;i<myArray.length;i++){
           emit ArrayEle(myArray[i]);
       }
   }

   function deleteTest()public {
       delete myArray;
   }
}
