pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {

    mapping (address => uint256) public balances;
    address payable wallet;
    
    constructor(address payable wallet_){
        wallet = wallet_;
    }

    function buyToken() public payable{
        // buy a token 
        balances[msg.sender] += 1;
        // send Etherium to the wallet
        wallet.transfer(msg.value);
    }
}