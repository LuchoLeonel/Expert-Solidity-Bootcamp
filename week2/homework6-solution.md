1. Create a Solidity contract with one function
The solidity function should return the amount of ETH that was passed to it, and the
function body should be written in assembly

2. Do you know what this code is doing ?
0x68601e8060093d393df35952383d59396009380160173d828234f050f0ff
It's duplicating itself twice before selfdestructing and sending its balance to the second contract

3. Explain what the following code is doing in the Yul ERC20 contract
        function allowanceStorageOffset(account, spender) -> offset { language-js
            offset := accountToStorageOffset(account)
            mstore(0, offset)
            mstore(0x20, spender)
            offset := keccak256(0, 0x40)
        }

returns the slot in storage used to save the allowance for that account-spender relation.
The first line is returning the slot in storage used for saving the balance of the account.
The second line is saving in the slot 0 of memory the previous offset.
The third line is saving in the slot 1 of memory the spender address.
The four line is getting the keccak256 hash for the offset and the spender address.