/A swap smart contract
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
