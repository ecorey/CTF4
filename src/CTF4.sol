// Level 4 - Powers of 2
// Using the Isolution4 interface write a function that takes a uint256 value and returns the 
// greatest power of 2, (2 ^ n) that is less than or equal to the input value. 
// The input value is a number between 2^0 and 2^256 -1


//SPDX-License-Identifier:MIT

pragma solidity 0.8.17;

// stdin: 1                     stdout: 1 or 2**0
// stdin: 10                    stdout: 8 or 2**3
// stdin: 21                    stdout: 16 or 2**4
// stdin: 2048                  stdout: 2048 or 2**11
// stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
// stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
interface Isolution4 {
    function solution(uint256 number) external pure returns (uint256);
}


contract CTF4 is Isolution4 {



    function solution(uint256 number2) public pure override returns (uint256) {
        uint256 counter = 0;
        uint256 greatestPOW = 1;
        uint256 answer;
        
        assembly {
            // initialize loop variable i to 0
            let i := 0

            // loop with a maximum iteration check as a fail-safe (in this case 256 to account for uint256's size)
            for { } lt(i, 256) { i := add(i, 1) }
            {
                // Check the condition for greatestPOW
                if gt(mul(greatestPOW, 2), number2) {
                    // exit the loop if the next doubling of greatestPOW would exceed number2
                    break
                }

                // double greatestPOW
                greatestPOW := mul(greatestPOW, 2)

                // increment counter
                counter := add(counter, 1)
            }
            answer := greatestPOW
        }
        
        return answer;  
    }




}

