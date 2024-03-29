pragma solidity ^0.8.10;

interface BaseJumpRateModelV2 {
    event NewInterestParams(
        uint256 baseRatePerBlock,
        uint256 multiplierPerBlock,
        uint256 jumpMultiplierPerBlock,
        uint256 kink
    );

    function baseRatePerBlock() external view returns (uint256);

    function blocksPerYear() external view returns (uint256);

    function getSupplyRate(
        uint256 cash,
        uint256 borrows,
        uint256 reserves,
        uint256 reserveFactorMantissa
    ) external view returns (uint256);

    function jumpMultiplierPerBlock() external view returns (uint256);

    function kink() external view returns (uint256);

    function multiplierPerBlock() external view returns (uint256);

    function owner() external view returns (address);

    function updateJumpRateModel(
        uint256 baseRatePerYear,
        uint256 multiplierPerYear,
        uint256 jumpMultiplierPerYear,
        uint256 kink_
    ) external;

    function utilizationRate(
        uint256 cash,
        uint256 borrows,
        uint256 reserves
    ) external pure returns (uint256);
}
