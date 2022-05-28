// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import "openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

contract GETokenV1 is ERC20Upgradeable, OwnableUpgradeable{
    
    function initialize (string calldata _name, string calldata _symbol) external initializer {
        __ERC20_init(_name, _symbol);
        __Ownable_init();
        mint(_msgSender(), 10e9 * 10** decimals());
    }

    function mint(address _receiver, uint256 _amount) public onlyOwner {
        _mint(_receiver, _amount);
    }
}
