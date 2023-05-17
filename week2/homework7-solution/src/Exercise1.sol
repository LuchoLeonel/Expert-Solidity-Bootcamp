// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Exercise1 {
    address erc20;
    event transferOccurred(address,uint256);

    constructor(address _erc20){
        erc20 = _erc20;
    }
    function query(uint _amount, address _receiver, function(address,uint256) external returns (bool) transferFunction) public {
        bool success = transferFunction(_receiver, _amount);
        require(success, "transfer failed");
    }

    function checkCall(bytes calldata data) external{
        require(bytes4(0xa9059cbb) == bytes4(data), "not transfer function");
        (address to, uint256 amount) = abi.decode(data[4:],(address,uint256));
        emit transferOccurred(to, amount);
    }
}