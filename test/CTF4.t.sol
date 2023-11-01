// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {CTF4} from "../src/CTF4.sol";  

contract SolutionTest is Test {
    
    CTF4 public ctf4;

    function setUp() public {
        ctf4 = new CTF4();  
    }

    function test_smallNumbers() public {
        uint256 result = ctf4.solution(10);
        assertEq(result, 8, "Failed with small numbers");
    }

    function test_mediumNumbers() public {
        uint256 result = ctf4.solution(2048);
        assertEq(result, 2048, "Failed with medium numbers");
    }

    function test_largeNumbers() public {
        uint256 result = ctf4.solution(9223372036854775808);
        assertEq(result, 9223372036854775808, "Failed with large numbers");
    }

    function test_edgeCase() public {
        uint256 result = ctf4.solution(0xffffffff);
        assertEq(result, 2147483648, "Failed with edge case");
    }
    
    function test_one() public {
        uint256 result = ctf4.solution(1);
        assertEq(result, 1, "Failed with one");
    }
}
