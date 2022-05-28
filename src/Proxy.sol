// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "openzeppelin-contracts/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract TransparentProxy is TransparentUpgradeableProxy{
    constructor(address _logic, address _admin) TransparentUpgradeableProxy(_logic, _admin, ""){}
}

