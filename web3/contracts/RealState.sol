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

    // events

    event  PropertyListed(uint256 indexed id,address indexed owner ,uint256 price);
    event PropertySold(uint256 indexed id,address indexed oldOwner,address indexed newOner,uint256 price);
    event PropertyResold(uint256 indexed id,address indexed oldOwner,address indexed newOwner,uint256 price);

    //Review

    struct Review {
        address reviewer;
        uint256 productID;
        uint256 rating;
        string comments;
        uint256 likes;
    }

    struct Product{
        uint256 productId;
        uint256 totalRating;
        uint256 numReviews;
    }

    mapping(uint256 => Review[]) private reviews;
    mapping(address => uint256[]) private userReviews;
    mapping(uint256 => Product) private products;

    uint256 public reviewCounter;

    event ReviewAddes(uint256 indexed productId,address indexed reviewer,uint256 rating,string comment);
    event ReviewLiked(uint256 indexed productId,uint256 indexed reviewIndex,address indexed liker,uint256 likes);



    // function in contract

    function listProperty(address owner,uint256 price,string memory _propertyTitle,string memory _category,string memory _images,string memory _propertyAddress,string memory _description) external (uint256){
        require(price > 0,"Price must be grater then 0");
        
        uint256 productId = propertyIndex++;
        Property storage property = properties[productId];

        property.productID;
        property.owner = owner;
        property.price = price;
        property.propertyTitle = _propertyTitle;
        property.category = _category;
        property.images = _images;
        property.propertyAddress = _propertyAddress;
        property.description = _description;
        
        

        event PropertyListed(productId,owner,price);
    }

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

