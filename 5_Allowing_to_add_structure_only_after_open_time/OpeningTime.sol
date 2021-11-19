pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {
    
    //The date time of opening the permission in seconds
    uint256 openingTime = 1637314900;
    
    modifier onlyWhileOpen(){
        require (block.timestamp >= openingTime);
        _;
    }
    
    Person[] public persons;
    
    struct Person {
       string firstName;
       string lastName;
    }
    
    function addPersonn(string memory firstName_, string memory lastName_) public onlyWhileOpen {
        persons.push(Person(firstName_, lastName_));
    }
}