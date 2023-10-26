// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {CTF4} from "../src/CTF4.sol";

contract SolutionTest is Test {
    
    CTF4 public ctf4;

  

    function setUp() public {
        ctf4 = new CTF4();
    }

    function test_Something() public {   

    }
    
}


