pragma solidity ^0.8.10;

interface SimplePriceOracle {
    event PricePosted(
        address asset,
        uint256 previousPriceMantissa,
        uint256 requestedPriceMantissa,
        uint256 newPriceMantissa
    );

    function assetPrices(address asset) external view returns (uint256);

    function getUnderlyingPrice(address cToken) external view returns (uint256);

    function isPriceOracle() external view returns (bool);

    function setDirectPrice(address asset, uint256 price) external;

    function setUnderlyingPrice(address cToken, uint256 underlyingPriceMantissa)
        external;
}
