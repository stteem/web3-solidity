# Create a Token

This repo contains programs that demonstrate the basic syntax and functionality of the Solidity programming language. The most interesting is a simple "Create a Token" program which demonstrates basic token minting and burning.

## Description

The contract has a mint function, burn function, checks balances and totalSupply". This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Token.sol). Copy and paste the entire code from MyToken.sol into the file:

```javascript

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // public variables here
    string public tokenName = "STTEEM";
    string public tokenAbbrv = "STM";
    uint public totalSupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint(address _address, uint _amount) public {
        totalSupply += _amount;
        balances[_address] += _amount;
    }


    // burn function
    function burn(address _address, uint _amount) public {
        if(balances[_address] >= _amount){
            balances[_address] -= _amount;
            totalSupply -= _amount;
        }
        else {
            revert("Not enough balance");
        }
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar or use the "ctrl + s" shortcut. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Click on the "Deploy" button.

Once the contract is deployed, you can interact with it by selecting the "MYTOKEN" contract dropdown menu under the "Deployed Contracts" section, and then  calling the mint, burn, and balances functions with wallet address and amount as inputs. Finally, click on the "transact" button to execute the functions.

You can find and copy a wallet address in the "ACCOUNT" section of "DEPLOY & RUN TRANSACTIONS".

## Authors

Uwem Uke  
[@uwemuke](https://twitter.com/uwemuke)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details