SONDE TOKEN DEPLOYMENT PACKAGE
===============================

TOKEN SPECIFICATIONS:
---------------------
Name: SONDE
Symbol: $SONDE
Decimals: 9
Total Supply: 100,000,000,000 (100 Billion) - HIGH SUPPLY ✅
Mintable: YES (you control mint authority)
Freezable: NO (decentralized)
Blockchain: Solana

DEPLOYMENT STEPS:
-----------------

1. Install Solana CLI:
   sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
   export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

2. Install SPL Token CLI:
   cargo install spl-token-cli

3. Run the deployment script:
   bash quick_deploy.sh

OR MANUAL DEPLOYMENT:
---------------------

Step 1: Create Wallet
   mkdir -p ~/sonde-wallet
   solana-keygen new --outfile ~/sonde-wallet/deployer.json
   
   ⚠️ WRITE DOWN THE SEED PHRASE!

Step 2: Configure
   solana config set --keypair ~/sonde-wallet/deployer.json
   solana config set --url https://api.devnet.solana.com

Step 3: Get Test SOL (devnet)
   solana airdrop 2

Step 4: Create Token
   spl-token create-token --decimals 9
   
   Save the mint address!

Step 5: Create Account
   spl-token create-account <MINT_ADDRESS>

Step 6: Mint Supply
   spl-token mint <MINT_ADDRESS> 100000000000

Step 7: Verify
   spl-token supply <MINT_ADDRESS>
   spl-token balance <MINT_ADDRESS>

MAINNET DEPLOYMENT:
-------------------

1. Get real SOL (1-2 SOL needed, ~$150-300):
   - Buy on exchange (Coinbase, Binance, etc.)
   - Send to your deployer wallet address

2. Switch to mainnet:
   solana config set --url https://api.mainnet-beta.solana.com

3. Repeat steps 4-7 above

4. Your token will be live!

WALLET RECOVERY:
----------------

Your wallet keypair is stored in JSON format.
The file contains an array of numbers (your private key).

To recover:
1. Keep the deployer.json file safe
2. If you lose it, use your seed phrase:
   solana-keygen recover --outfile new-keypair.json

To export private key:
   cat ~/sonde-wallet/deployer.json

IMPORTANT: This is your private key! Never share it!

NEXT STEPS AFTER DEPLOYMENT:
-----------------------------

1. Create Liquidity Pool (Raydium):
   - Go to https://raydium.io/liquidity/create-pool
   - Pair SONDE with USDC
   - Recommended: 50M SONDE + $25K USDC
   - Initial price: $0.0005

2. Airdrop to Seeker Holders:
   - Use spl-token transfer
   - Send 100-1000 SONDE per Seeker wallet
   - 150K Seekers × 500 = 75M tokens (0.075% supply)

3. Submit to CoinGecko:
   - https://www.coingecko.com/en/coins/new
   - Free listing
   - Requires: website, social media, liquidity

4. Submit to CoinMarketCap:
   - https://coinmarketcap.com/request/
   - Free listing
   - 2-4 week review

5. Marketing:
   - Create Twitter (@SondeNetwork)
   - Post in r/SolanaToken
   - Post in Solana Mobile Discord
   - Create Telegram community

SECURITY CHECKLIST:
-------------------
[ ] Seed phrase written down (paper, not digital)
[ ] Seed phrase stored in 3 separate locations
[ ] Keypair file backed up to USB drive
[ ] Keypair file encrypted (gpg --symmetric)
[ ] Tested wallet recovery process
[ ] Created cold storage wallet
[ ] Transferred 90% of tokens to cold storage
[ ] Verified transaction on explorer

SUPPORT:
--------
Solana Docs: https://docs.solana.com
SPL Token Docs: https://spl.solana.com/token
Solana Discord: https://discord.gg/solana

