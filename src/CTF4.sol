//SPDX-License-Identifier:MIT

pragma solidity 0.8.17;


interface Isolution4 {
    function solution(uint256 number) external pure returns (uint256);
}

// REDO FUNCTIONS 
contract CTF4 is Isolution4 {



       function solution (uint256 number) external pure returns (uint256){

         uint256 greatestPOW = 1;

         while (greatestPOW ** 2 <= number) {
             greatestPOW *= 2;
         }

         return greatestPOW;
     }



}

