//SPDX-License-Identifier:MIT

pragma solidity 0.8.17;


interface Isolution {
    function solution(uint256 number) external pure returns (uint256);
}

// REDO FUNCTIONS 
contract CTF4 is Isolution {

    // stdin: 1                     stdout: 1 or 2**0
    // stdin: 10                    stdout: 8 or 2**3
    // stdin: 21                    stdout: 16 or 2**4
    // stdin: 2048                  stdout: 2048 or 2**11
    // stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
    // stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31

    function solution(uint256 number) external pure override returns (uint256) {
        uint256 greatestPOW = 2;

        while (greatestPOW * 2 <= number) {
            greatestPOW *= 2;
        }

        // If the input number is 1, then the greatest power of 2 less than or equal to 1 is 2^0 = 1.
        if (number == 1) {
            greatestPOW = 1;
        }

        return greatestPOW;
    }


}

