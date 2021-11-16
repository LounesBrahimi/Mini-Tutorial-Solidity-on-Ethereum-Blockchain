pragma solidity >=0.7.0 <0.9.0;

contract FirstContract {
    enum State{
        Waiting,
            Ready,
                Active
    }
    
    State public state;
    
    constructor() {
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool){
        return state == State.Active;
    }
}