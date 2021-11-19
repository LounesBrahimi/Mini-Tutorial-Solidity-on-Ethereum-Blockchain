pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {

    mapping (address => uint256) public balances;
    
    address payable wallet;
   
    event purchase(
        address indexed buyer,
        uint256 amount
    );
    
    constructor(address payable wallet_){
        wallet = wallet_;
    }
    
    fallback() external payable {
        buyToken();
    }
    
    receive() external payable {
        // custom function code
    }

    function buyToken() public payable{
        // buy a token 
        balances[msg.sender] += 1;
        // send Etherium to the wallet
        wallet.transfer(msg.value);
        emit purchase(msg.sender, 1);
    }
}