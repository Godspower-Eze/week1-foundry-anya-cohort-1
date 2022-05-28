// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "./GETokenV1.sol";

contract GETokenV2 is GETokenV1{

    function burn(address _account, uint256 _amount) public onlyOwner {
        _burn(_account, _amount);
    }
    
}
