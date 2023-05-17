Homework 1
Blockchain
Discuss in your teams

1. Why is client diversity important for Ethereum
2. Where is the full Ethereum state held ?
3. What is a replay attack ? , which 2 pieces of information can prevent it ?
4. In a contract, how do we know who called a view function ?

1. Why is client diversity important for Ethereum ?
Multiple, independently developed and maintained clients exist because client diversity makes the network more resilient to attacks and bugs.
-Bugs: A bug in an individual client is less of a risk to the network when representing a minority of Ethereum nodes.
-Attacks: An attack that tricks a particular client onto a particular branch of the chain is unlikely to be successful because other clients are unlikely to be exploitable in the same way and the canonical chain remains uncorrupted. Low client diversity increases the risk associated with a hack on the dominant client.
-Proof of Stake finality: A bug in a consensus client with over 33% of the Ethereum nodes could prevent the Beacon Chain from finalizing, meaning users could not trust that transactions would not be reverted or changed at some point. 
Worse still, a critical bug in a client with a two-thirds majority could cause the chain to incorrectly split and finalize, leading to a large set of validators getting stuck on an invalid chain.
-Shared responsability: The lesser the client diversity, the greater the burden of responsibility for the developers maintaining the majority client. Spreading this responsibility across multiple teams is good for both the health of Ethereum's network of nodes and its network of people.
https://ethereum.org/en/developers/docs/nodes-and-clients/client-diversity/




2. Where is the full Ethereum state held ?
Ethereum state trie has four types: world state trie, transaction trie, transaction receipt trie, and account storage trie.
Three main state tries: world state trie, transaction trie, and receipt trie are stored in the block. And, account storage trie construct leaf node in world state trie.
The world state is a mapping between addresses (160-bit identifiers) and account states.
Account state has four fields: nonce, balance, storageRoot, and codeHash.
StorageRoot is a 256-bit hash of the root node of a Modified Merkle Patricia tree that encodes the content of the account storage trie.
The Modified Merkle Patricia Trie is a combination of Patricia trie and Merkle tree.
The account storage trie is where all of the contract data lives. Each Ethereum account has its own storage trie.
https://medium.com/@eiki1212/ethereum-state-trie-architecture-explained-a30237009d4e


3. What is a replay attack ? , which 2 pieces of information can prevent it ?
In the blockchain, a signature replay attack is an attack whereby a previously executed valid transaction is fraudulently or maliciously repeated on the same blockchain or a different blockchain. In this attack, the attacker can intercept a valid transaction and use the signature of that transaction to bypass security measures in order to perform the transaction again fraudulently.
This 2 pieces of information can prevent replay attacks:

Network ID: This is a unique identifier for the network on which the transaction is being made. By including the network ID in a transaction, it can be ensured that the transaction is only valid on that specific network and cannot be replayed on other networks.

Nonce: We can make each off-chain signature unique by adding a nonce. This way, once a signature has been used an attacker cannot reuse that signature because the nodes will recognize that the nonce has already been used.

https://docs.celo.org/es/blog/tutorials/solidity-vulnerabilities-signature-replay-attack#:~:text=In%20the%20blockchain%2C%20a%20signature,blockchain%20or%20a%20different%20blockchain.


4. In a contract, how do we know who called a view function ?
We can access the caller of the function with msg.sender.