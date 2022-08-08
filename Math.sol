// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

library Math {
    function getMaximumNumber(uint x, uint y) internal pure returns (uint) {
        return x >= y ? x : y;
    }
}

contract Test {
    function testMax(uint x, uint y) external pure returns (uint) {
        return Math.getMaximumNumber(x, y);
    }
}

library ArrayLib {
    function arrayIndexFinder(uint[] memory arr, uint x) internal pure returns (uint) {
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] == x) {
                return i;
            }
        }
        revert("not found");
    }
}

contract TestArray {
    using ArrayLib for uint[];
    uint[] public arr = [3, 2, 1];

    function testFind() external view returns (uint i) {
        //return ArrayLib.arrayIndexFinder(arr, 2);
        return arr.arrayIndexFinder(2);
    }
}
