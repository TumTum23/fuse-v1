pragma solidity ^0.8.10;

interface Maximillion {
    function cEther() external view returns (address);

    function repayBehalf(address borrower) external payable;

    function repayBehalfExplicit(address borrower, address cEther_)
        external
        payable;
}
