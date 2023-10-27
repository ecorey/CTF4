// Level 4 - Powers of 2
// Using the Isolution4 interface write a function that takes a uint256 value and returns the 
// greatest power of 2, (2 ^ n) that is less than or equal to the input value. 
// The input value is a number between 2^0 and 2^256 -1


//SPDX-License-Identifier:MIT

pragma solidity 0.8.17;


interface Isolution4 {
    function solution(uint256 number) external pure returns (uint256);
}


contract CTF4 is Isolution4 {



    function solution(uint256 num) public pure override returns (uint256) {
        uint256 counter = 0;
        uint256 greatestPOW = 1;
        uint256 answer;
        
        assembly {
            // initialize loop variable i to 0
            let i := 0

            // loop with a maximum iteration check at 256 to account for uint256 size)
            for { } lt(i, 256) { i := add(i, 1) }
            {
                // check the condition for greatestPOW
                if gt(mul(greatestPOW, 2), num) {
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

