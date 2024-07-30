// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Staking {
    uint256 public rewardRate;
    mapping(address => uint256) public stakes;
    mapping(address => uint256) public rewards;

    constructor() {
        rewardRate = 100; // 예제 값
    }

    function stake() external payable {
        stakes[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(stakes[msg.sender] >= amount, "Insufficient balance");
        stakes[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function claimReward() external {
        uint256 reward = calculateReward(msg.sender);
        rewards[msg.sender] += reward;
    }

    function calculateReward(address user) public view returns (uint256) {
        // 보상 계산 로직
        return rewardRate; // 예제
    }
}
