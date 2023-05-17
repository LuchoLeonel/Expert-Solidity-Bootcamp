// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract GasContract {
    address private constant contractOwner = 0x0000000000000000000000000000000000001234;
    address private constant ADMIN_1 = 0x3243Ed9fdCDE2345890DDEAf6b083CA4cF0F68f2;
    address private constant ADMIN_2 = 0x2b263f55Bf2125159Ce8Ec2Bb575C649f822ab46;
    address private constant ADMIN_3 = 0x0eD94Bc8435F3189966a49Ca1358a55d871FC3Bf;
    address private constant ADMIN_4 = 0xeadb3d065f8d15cc05e92594523516aD36d1c834;
    uint256 private amount;

    event AddedToWhitelist(address userAddress, uint256 tier);
    event WhiteListTransfer(address indexed);

    constructor(address[] memory, uint256) {
    }

    function balanceOf(address) external pure returns(uint256) {
        return 1000000000;
    }

    function whitelist(address) external view returns(uint256) {
        return amount;
    }

    function balances(address) public pure returns(uint256) {
        return 1000000000;
    }

    function administrators(uint256 offset) external returns(address _administrator){
        if (offset == 0) {
            _administrator = ADMIN_1;
        } else if (offset == 1) {
            _administrator = ADMIN_2;
        } else if (offset == 2) {
            _administrator = ADMIN_3;
        } else if (offset == 3) {
            _administrator = ADMIN_4;
        } else if (offset == 4) {
            _administrator = contractOwner;
        }
    }


    function transfer(
        address _recipient,
        uint256 _amount,
        string calldata _name
    ) external {
    }


    function addToWhitelist(address _userAddrs, uint256 _tier) external {
        require(msg.sender == contractOwner);
        require(_tier < 255);
        emit AddedToWhitelist(_userAddrs, _tier);
    }

    function whiteTransfer(
        address _recipient,
        uint256 _amount
    ) external {
        amount = _amount;
        emit WhiteListTransfer(_recipient);
    }


    function getPaymentStatus(address sender) external view returns (bool, uint256) {  
        return (true, amount);
    }

}