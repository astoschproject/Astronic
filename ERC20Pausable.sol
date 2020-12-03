pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./Pausable.sol";

contract ERC20Pausable is ERC20, Pausable {
    function transfer(address to, uint256 value) public whenNotPaused returns (bool) {
        return super.transfer(to, value);
    }

    function transferFrom(address from, address to, uint256 value) public whenNotPaused returns (bool) {
        return super.transferFrom(from, to, value);
    }
    
    /*
     * approve/increaseApprove/decreaseApprove can be set when Paused state
     */
     
    /*
     * function approve(address spender, uint256 value) public whenNotPaused returns (bool) {
     *     return super.approve(spender, value);
     * }
     *
     * function increaseAllowance(address spender, uint addedValue) public whenNotPaused returns (bool success) {
     *     return super.increaseAllowance(spender, addedValue);
     * }
     *
     * function decreaseAllowance(address spender, uint subtractedValue) public whenNotPaused returns (bool success) {
     *     return super.decreaseAllowance(spender, subtractedValue);
     * }
     */
}