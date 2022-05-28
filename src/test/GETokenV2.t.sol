// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/src/test.sol";
import "../GETokenV2.sol";

contract GETokenV2Test is DSTest {

    GETokenV2 geToken;
    
    function setUp() public {
        geToken = new GETokenV2();
        geToken.initialize("Godspower Eze Token", "GET");
        geToken.mint(address(this), 10e9 * 10 ** geToken.decimals());
    }

    function testBurn() public {
        geToken.burn(address(this), geToken.balanceOf(address(this)));
        assert(geToken.balanceOf(address(this)) == 0);
    } 
}
