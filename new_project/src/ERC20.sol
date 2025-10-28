// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IERC20 } from "./interface/IERC20.sol";

contract ERC20 is IERC20 {
    string public name = "MyToken";
    string public symbol = "MTK";  
    uint8 public decimals = 18;
    uint256 private _totalSupply;

    mapping(address => uint256) private _balances;
    mapping(address owner => mapping(address spender => uint256)) private _allowances;

    constructor(uint256 initialSupply) {
        _totalSupply = initialSupply;
        _balances[msg.sender] = initialSupply;
        emit Transfer(address(0), msg.sender, initialSupply);
    }

    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    

}
