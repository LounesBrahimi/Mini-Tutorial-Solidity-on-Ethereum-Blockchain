pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {
    
    Person[] public persons;
    
    struct Person {
       string firstName;
       string lastName;
    }
    
    function addPersonn(string memory firstName_, string memory lastName_) public {
        persons.push(Person(firstName_, lastName_));
    }
}