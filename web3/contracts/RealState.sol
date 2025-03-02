// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract RealEstate {

    // State variables

    struct Property {
        uint256 productId;
        address owner;
        uint256 price;
        string propertyTitle;
        string category;
        string images;
        string prpertyAdress;
        string description;
        address[] reviewers;
        string[] reviews;
    }

    // mapping 
    mapping(uint256 => Property) private properties;
    uint256 public propertyIndex;

    // function in contract

    function listProperty() external (uint256){}

    function updateProperty() external (uint256){}

    function buyProperty() external payble{}

    function getAllProperties() public view returns(Property[] memory){}

    function getPropeerty() external view returns(){}

    function getUseProperties() external view returns(Property[] memory){}

    // Reviews

    function addReview()external{}

    function getProductReview()external view returns(Review[] memory){}

    function getUserReviews() external view returns(Review[] memory){}

    function likeReview() external {}

    function getHighRatestProduct() external view returns(uint256){}
   
}

