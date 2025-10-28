// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interface/IERC20.sol";

contract MyToken is IERC20 {
    string public name = "MyToken";
    string public symbol = "MTK";  
    uint8 public decimals = 18;
    uint256 private _totalSupply;


}
