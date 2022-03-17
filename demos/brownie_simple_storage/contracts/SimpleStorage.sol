// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 public favouriteNumber;
    //bool favouriteBool

    struct People {
        uint256 favouriteNumber;
        string name;
    }
    mapping(string => uint256) public nameToFavouriteNumber;

    //People public person = People({favouriteNumber : 10, name : "ABC"});

    People[] public people;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve () public view returns(uint256){
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({favouriteNumber : _favouriteNumber, name : _name}));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}