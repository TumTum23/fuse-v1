pragma solidity ^0.8.10;

interface UniswapV3TwapPriceOracle {
    function TWAP_PERIOD() external view returns (uint32);

    function WETH() external view returns (address);

    function feeTier() external view returns (uint24);

    function getUnderlyingPrice(address cToken) external view returns (uint256);

    function price(address underlying) external view returns (uint256);

    function uniswapV3Factory() external view returns (address);
}
