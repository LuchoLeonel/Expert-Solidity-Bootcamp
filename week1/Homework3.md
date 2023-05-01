Homework 3
HomeworkEVM1

1. What are the advantages and disadvantages of the 256 bit word length in the EVM?
Advantages : handy for cryptographic scheme (sha256 - keccak256) and for Elliptic curve cryptography (signing of messages and transactions, ECDSA - algorithm to produce public/private key pair)
Disadvantages : smaller variables are not packed, need for optimizing storage
We need to think about that regarding the 6 ways of storing variables (logs, stack, storage, memory, calldata, contract code)

2. What would happen if the implementation of a precompiled contract varied between Ethereum clients?
It would be a mess because it will break determinism of cryptographic functions like ecrecover for example

3. Using Remix write a simple contract that uses a memory variable, then using the debugger step through the function and inspect the memory.
https://www.loom.com/share/e6b9ef31476b4333866a9f26312b8e38