Homework 4

CTF
Register on the Encode CTF : https://www.solidityctf.xyz/

Optimising Storage
Take this contract
Use the sol2uml tool to find out how many storage slots it is using.
By re ordering the variables, can you reduce the number of storage slots needed ?
Foundry Introduction
1. Install Foundry
See Instructions
First run the command below to get foundryup , the Foundry toolchain installer:
curl -L https://foundry.paradigm.xyz | bash
If you do not want to use the redirect, feel free to manually download the foundryup
installation script from here.
Then, run foundryup in a new terminal session or after reloading your PATH .
Other ways to use foundryup , and other documentation, can be found here.
2. Create a project
1. Use forge init <project_name> for the default template or
2. Use this template
3. Run the tests supplied to familiarise yourself with Foundry
Try out the Solidity Template or the Foundry Template
1. Start a new project using the Solidity Template
2. Make a fork of mainnet from the command line (you may need to setup an Infura or
Alchemy account)
3. Query the mainnet using the command line to retrieve a property such as latest block
number.Is this valid solidity ?