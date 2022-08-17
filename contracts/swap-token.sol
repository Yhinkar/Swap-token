// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

//TEST1

//A swap smart contract
//write a swap smart contract that allow users to swap between two tokens;

//for example you want to build a smart contract that allows you to swap from link token to W3B token,
//you need to determine the price of link token and web3bridge token,
                //Assuming link is $50,
                //Assuming W3B is $200,
    //Assuming a user wants to swap link to W3 token.
    //he needs to create an order, by putting all informaton necessary eg, the token address he wants to swap,the token address he wants to receive, the amount he want to swap, and deadline.
    //you can use struct to identify each order. and a mapping of uint to struct to identify each order,

     //after someone has created an order, another user can decide to execute the order by inputing the id of the order he wants to execute and  sending the token to the while he get the token that was use to execute order.

     //hint: you would need a price feed you actuallyy calculated in your smart contract.



     /////////////////////////////////////////////////////////////////////////////////////////////////////////////////

     //create an order-based swap contract that allows users to deposit various kind of tokens. These tokens can be purchased by others with another token specified by the depositors. 

    
     //For example; Ada deposits 100 link tokens, she wants in return, as a pay, 20 W3B tokens for for 100 link.

import "./IERC20.sol";
contract SwapToken{
    IERC20 public link;
    IERC20 public Web3;
    address public first;
    address public second;
    uint public firstamount;
    uint public secondamount;

   

    

//constructor function
     constructor(address _token1,address _owner1,uint _amount1,address _token2,address _owner2,uint _amount2){
        link = IERC20(_token1);
        first = _owner1;
        firstamount = _amount1;
        Web3= IERC20(_token2);
        second= _owner2;
        secondamount = _amount2;
    }

    }

// function that allows user to swap tokens
 function tokenSwap(uint _firstamount, uint _secondamount) public {
        require(msg.sender == first || msg.sender == second, "You're not authorized!");
        require( link.allowance(first, address(this)) >= _firstamount, "link allowance too low");
        require(Web3.allowance(second, address(this)) >= _secondamount,"web3 allowance too low");
///////////////////////////////////////////////////////////////////////////////////////////////////////
        toTRansferfrom(link, first, second, firstamount);
        toTRansferfrom(Web3, second, first, secondamount);
    }
//private function for transfer of tokens.
 function toTRansferfrom(IERC20 token, address _sender, address _recipient, uint amount) private {
     bool transferToken = token.transferFrom(_sender, _recipient, amount);
     require(transferToken, "oops! transaction failed");
 }


 
    