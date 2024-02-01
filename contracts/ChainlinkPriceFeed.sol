// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract ChainlinkPriceFeed {
  AggregatorV3Interface public priceFeed = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);

  function getLatestPrice() external view returns (int) {
    (
        /* uint80 roundID */,
        int price, // <-- this is the one we want to return
        /* uint startedAt */,
        /* uint timeStamp */,
        /* uint80 answeredInRound */
    ) = priceFeed.latestRoundData();

    return price;
  }
}