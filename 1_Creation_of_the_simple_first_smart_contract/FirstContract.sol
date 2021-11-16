pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {
    string value;
    
    constructor() {
        value = "Unknown Value";
    }
    
    function getValue() public view returns(string memory){
        return value;
    }
    
    function setValue(string memory value_) public {
        value = value_;
    }
}