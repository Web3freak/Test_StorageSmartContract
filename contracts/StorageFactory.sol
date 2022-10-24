// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";



contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
       

    }

    function sfStorage(uint256 _simpleStoarageIndex, uint256 _simpleStoarageNumber) public {
        simpleStorageArray[_simpleStoarageIndex].store(_simpleStoarageNumber);
    }

    function sfGet(uint256 _simpleStoarageIndex) public view returns(uint256){
       return simpleStorageArray[_simpleStoarageIndex].retrieve();
      
    }

}