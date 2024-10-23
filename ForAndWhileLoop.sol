// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ForAndWhileLoops {
    function loops() external pure {
        for (uint i = 1; i <= 5; i++) {
            if(i == 3) continue;
            if(i == 5) break;
        }

        uint j = 1;
        while (j <= 5) {
            if(j == 3) continue;
            j++;
        }
    }

    function sum(uint _n) external pure returns(uint) {
        uint s = 0;
        for(uint i = 1; i < _n + 1; i++) s += i;
        return s;
    }
}