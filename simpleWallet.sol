pragma solidity ^0.5.8;

contract simpleWallet {
//The most basic simulation of a token transfer system between two addresses in solidity on blockchain.
    mapping(address => uint256) public wallet;
    function transfer (address sender, address reciever) public {
        require(wallet[sender]>0, "insufficient balance");
        wallet[sender]--;
        wallet[reciever]++;
        
    }
    function mintTokens(address accountAddress) public {
        wallet[accountAddress]++;
    }
    function viewBalance (address accountAddress) public view returns(uint256) {
        return wallet[accountAddress];
    }
}
