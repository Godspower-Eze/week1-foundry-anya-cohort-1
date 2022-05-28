// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/src/test.sol";
import "../GETokenV1.sol";

interface Vm {
    function prank(address) external;
}

contract GETokenV1Test is DSTest {

    GETokenV1 geToken;
    Vm vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);
    
    function setUp() public {
        geToken = new GETokenV1();
        geToken.initialize("Godspower Eze Token", "GET");
    }

    function testName() public {
        assertEq(geToken.name(), "Godspower Eze Token");
    }

    function testSymbol() public {
        assertEq(geToken.symbol(), "GET");
    }

    function testBalance() public view {
        assert(geToken.balanceOf(address(this)) == 10e9 * 10 ** geToken.decimals());
    }

    function testOwner() public view {
        assert(geToken.owner() == address(this));
    }

    function testFailMintByNonOwner() public {
        vm.prank(address(0));
        geToken.mint(address(0), 10e9 * 10 ** geToken.decimals());
    }
}
