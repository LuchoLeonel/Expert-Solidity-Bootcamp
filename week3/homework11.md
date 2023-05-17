"DogCoinGame is a game where players are added to the contract via the addPlayer function,
they need to send 1 ETH to play.
Once 200 players have entered, the UI will be notified by the startPayout event, and will pick 100
winners which will be added to the winners array, the UI will then call the payout function to pay
each of the winners.
The remaining balance will be kept as profit for the developers."
Write out the main points that you would include in an audit report.

1- Need to use a more recent version of the compiler
2- 1 is 1 wei, no 1 ETH, the same with 100 at line 31. And you're using the length of an array as if it was 200 eth.
3- addWinner, payout and payWinners has no access control, anyone can call it
4- When dividing by 100 at payout function you're not taking into account the remaining amount for the developers. There will be no remaining amount. You should use a percentaje to set the developer rewards.
5- No require that stop adding players after the 200 players is reached
6- payWinner should be internal
7- You can save gas putting the i++ of the for loop inside a uncheck block
8- When seding the ETH to the winner there is no check if the transaction was sucessfull neither if the address is not address zero. Should use SafeTransfer inside the Address library.
9- There is no way to restart the game
10- currentPrize is never used
11- This contract doesn't need to inherit from ERC20. No token is used nor issued


This contract is the winner of this years underhanded solidity contest, it mimics the OpenSea
application.
Can you spot the flaws in it
⛽🏌️
This is a gas-golfed version of Zora v3's Offers module!
🤩 A bidder can call createBid to bid on the NFT of their dreams.
💰 The NFT owner can call acceptBid to accept one of these on-chain bids.
🤝 Assets exchange hands.
😤 What could possibly go wrong?
