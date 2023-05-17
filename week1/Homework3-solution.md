Homework 3
HomeworkEVM1

1. What are the advantages and disadvantages of the 256 bit word length in the EVM?

Advantages:
-The use of a 256-bit word length is convinient for Ethereum's core cryptographic operations such as Keccak-256 hashing and elliptic curve computations.

Disadvantages:
-The use of a 256-bit word length results in higher gas costs as more computational resources are required and needs more storage space for each piece of data.


2. What would happen if the implementation of a precompiled contract varied between Ethereum clients?
It could lead to inconsistencies in how transactions involving that contract are processed and validated on the blockchain which could potentially lead to a fork in the blockchain.

Different Ethereum clients may interpret the precompiled contract code differently, leading to discrepancies in the results they produce. This could potentially cause problems for users of the affected contracts, as they may experience unexpected behavior or have their transactions rejected on some clients but not others.

3. Using Remix write a simple contract that uses a memory variable, then using the debugger step through the function and inspect the memory.