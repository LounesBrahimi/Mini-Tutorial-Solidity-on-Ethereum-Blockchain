pragma solidity >=0.7.0 <0.9.0;

contract ERC20Token{
    string public name;
    mapping (address => uint256) public balances;

    
    function mint() public {
        balances[tx.origin]++;
    }
    
    function getAdressToken() public view returns (address){
        return address(this);
    }
}

contract FirstContract {
    
    address payable wallet;
    address token;
    
    constructor(address payable wallet_, address token_){
        wallet = wallet_;
        token = token_;
    }

    function buyToken() public payable{
        wallet.transfer(msg.value);
        ERC20Token token_ = ERC20Token(address(token));
        token_.mint();
    }
    
        fallback() external payable {
        buyToken();
    }
    
    receive() external payable {
    }
}