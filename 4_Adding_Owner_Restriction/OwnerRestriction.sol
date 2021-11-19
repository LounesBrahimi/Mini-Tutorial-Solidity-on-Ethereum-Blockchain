pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {
    
    address owner;
    
    modifier onlyOwner(){
        // msg.sender is the count who call the function
        require(msg.sender == owner);
        _;
    }
    
    constructor(){
        owner = msg.sender;
    }
    
    Person[] public persons;
    
    struct Person {
       string firstName;
       string lastName;
    }
    
    function addPersonn(string memory firstName_, string memory lastName_) public onlyOwner {
        persons.push(Person(firstName_, lastName_));
    }
}