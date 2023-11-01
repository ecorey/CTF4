# Level 4 - Powers of 2

**Using the Isolution4 interface write a function that takes a uint256 value and returns the greatest power of 2, (2 ^ n) that is less than or equal to the input value. The input value is a number between 2^0 and 2^256 -1**

```
// stdin: 1                     stdout: 1 or 2**0
// stdin: 10                    stdout: 8 or 2**3
// stdin: 21                    stdout: 16 or 2**4
// stdin: 2048                  stdout: 2048 or 2**11
// stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
// stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
interface Isolution {
    function solution(uint256 number) external pure returns (uint256);
}
```

**Deploy:**

**To Deploy and Run script just add private key with no double quotes**

    forge create --rpc-url https://eth-sepolia.g.alchemy.com/v2/L8b_wM9C0XY0rMDwmGshrCG8W4e2SJLk --private-key xxx src/CTF4.sol:CTF4

**deployed to:**

    0xA4FDe9376F7e0860d0961704665993d6aE2CE098

**Solution Unoptimized:**

     function solutionUnoptimized (uint256 number) external pure returns (uint256){

         uint256 greatestPOW = 1;

         while (greatestPOW * 2 <= number) {
             greatestPOW *= 2;
         }

         return greatestPOW;
     }

WORKS FOR ALL GIVEN EXAMPLES:
stdin: 1 stdout: 1 or 2**0
stdin: 10 stdout: 8 or 2**3
stdin: 21 stdout: 16 or 2**4
stdin: 2048 stdout: 2048 or 2**11
stdin: 9223372036854775808 stdout: 9223372036854775808 or 2**63
stdin: 0xffffffff stdout: 2147483648 or 0x80000000 or 2**31
