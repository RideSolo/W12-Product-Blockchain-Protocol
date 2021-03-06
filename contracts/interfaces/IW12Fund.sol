pragma solidity ^0.4.24;

import "./IW12Crowdsale.sol";


interface IW12Fund {
    function setCrowdsale(IW12Crowdsale _crowdsale) external;

    function setServiceWallet(address _serviceWallet) external;

    function setSwap(address _swap) external;

    function transferOwnership(address newOwner) external;

    function recordPurchase(address buyer, uint tokenAmount) external payable;
}
