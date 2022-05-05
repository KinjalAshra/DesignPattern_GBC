// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TreeChainToken is ERC20, Ownable{

    mapping(address => uint256) public balance;

    constructor() ERC20("TreeChainToken", "TCT"){}

    function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
        balance[msg.sender] += amount;
    }
   
    function getBalance(address _address) public view returns(uint){
        return balance[_address];
    }

    function withdraw(address _to, uint _amount) public {
        balance[msg.sender] -= _amount;
        balance[_to] += _amount;

    }

}
