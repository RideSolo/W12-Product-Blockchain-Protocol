pragma solidity ^0.4.24;

import "./W12Crowdsale.sol";


contract W12CrowdsaleStub is W12Crowdsale {
    constructor (
        uint version,
        address _originToken,
        address _token,
        uint _price,
        address _serviceWallet,
        address _swap,
        uint _serviceFee,
        uint _WTokenSaleFeePercent,
        IW12Fund _fund
    )
        W12Crowdsale(
            version,
            _originToken,
             _token,
             _price,
             _serviceWallet,
             _swap,
             _serviceFee,
            _WTokenSaleFeePercent,
             _fund
        ) public
    {}

    function _outTokens(address to, uint amount) external returns (bool) {
        return token.transfer(to, amount);
    }

    function _setState(uint _WTokenSaleFeePercent) external {
        WTokenSaleFeePercent = _WTokenSaleFeePercent;
    }
}
