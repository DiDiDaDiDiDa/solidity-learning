// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// 全局变量
contract GlobleVar {
    
    // //货币单位
    // 1wei=1；
    // 1gwei =1e9;
    // 1ether=1e18

    // // 时间单位
    //1 == 1 seconds
    // 1 minutes == 60 seconds
    // 1 hours == 60 minutes
    // 1 days == 24 hours
    // 1 weeks == 7 days
    // 1 years == 365 days

    // // 区块单位
    // block.number uint;
    // block.timestamp uint;
    // block.difficulty;
    // block.coinbase address payable;
    // block.chainId uint;
    // block.gaslimit uint;

    // // msg
    // msg.data bytes;
    // msg.sender address
    // msg.sig byetes4
    // msg.value uint;

    // // 交易
    // tx.gasprice uint 
    // tx.origin address

    function test()public view returns(uint,uint,uint,address,uint){
        return (block.number,block.timestamp,block.difficulty,block.coinbase,block.gaslimit);
    }
    function gasleftTest() public view returns(uint){
        return gasleft();
    }
    // function GetBlockInfo(uint n)public view returns(bytes32){
    //     return block.blockhash(n);
    // }

    function msgTest(uint a)public view returns(bytes memory,address,bytes4){
        return (msg.data,msg.sender,msg.sig);
    }

    function txTest()public view returns(uint,address){
        return (tx.gasprice,tx.origin);
    }
}
