Homework 5
Assembly 1

1. When we do the CODECOPY operation, what are we overwriting ? (debugging this in Remix might help here)
https://gist.github.com/extropyCoder/4243c0f90e6a6e97006a31f5b9265b94

CODECOPY opcode overrides the free memory pointer at position 0x40

2. Could the answer to Q1 allow an optimisation ?
Could be, but the compiler needs the free memory pointer to work correctly, so it can be hard work just to remove it.

3. Can you trigger a revert in the init code in Remix ?
Yes, if I send value when deploying the contract

4. Write some Yul to
    1. Add 0x07 to 0x08
    2. store the result at the next free memory location.
    3. (optional) write this again in opcodes
5. Can you think of a situation where the opcode EXTCODECOPY is used ?
When the contract is a factory and needs to create proxy contracts, they're all the same

6. Complete the assembly exercises in this repo

Exercises
If you want to use gitpod, this is the format
https://gitpod.io/#https://github.com/ExtropyIO/ExpertSolidityBootcamp