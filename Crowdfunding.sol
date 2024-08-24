// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract CrownFunding {
    struct campaign {
        string title;
        string description;
        address payable benefactor;
        uint goal;
        uint256 timeline;
        uint amountRaised;
        bool isCompleted;
    }

    //create mappings to store each function 
    uint256 public campaignCount;
    
    mapping ( uint => campaign) public campaigns;
    mapping (uint => Amount) public amount;
    mapping (address => Benefactor) public benefactor;

    //Events for each action

    event campaignStart( uint time, string started);
    event donate (address benefactor, string donated);
    event funded (address funder, uint amount);

    //create campaign function
    function createCampaign (string memory _title, 
    string memory _description, 
    address _benefactor, 
    string memory _goal,
    uint _duration
     ) public view {
        require(createdAccount[_title] == false, "Campaign already created");
        campaignCount++;
        Campaign storage Campaign = campaigns[campaignCount];
        campaign.goal = goal;
        campaign.timeline = block.timestamp + duration * 10 days;
        campaign.isCompleted = false;
     } 
     //

     function donateCampaign (uint campaignId) external payable

        require(campaignId > 0 && campaignId <= campaignCount, "Campaign does not exist");

        Campaign storage campaign = campaigns[campaignId];

        require(msg.value > 0, "Donation must be greater than 0");
        require(block.timestamp < campaign.deadline, "Campaign is over");

        event donate (address benefactor, string donated);
    }


    function endCampaign (uint campaignId) public 