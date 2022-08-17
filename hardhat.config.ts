require("@nomicfoundation/hardhat-toolbox");
import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
require('@openzeppelin/hardhat-upgrades');
import * as dotenv from "dotenv";
dotenv.config();

const config: HardhatUserConfig = {
  solidity: "0.8.9",
  networks: {
    hardhat: {
      forking: {
        url: process.env.URL!,
      },
    },
    ropsten: {
      url: process.env.URL,
      //@ts-ignore
      accounts: [process.env.KEY],
    },
  },
};

  
export default config;
