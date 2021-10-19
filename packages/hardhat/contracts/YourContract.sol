pragma solidity >=0.8.0 <0.9.0;
// SPDX-License-Identifier: MIT


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract YourContract is ERC20, Ownable {
    constructor() ERC20("ERC20PatronageReceipt", "MTK") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}