#!/bin/bash
# SONDE Token Quick Deployment Script
set -e

echo "🚀 SONDE TOKEN DEPLOYMENT"
echo "=========================="
echo ""

# Check if Solana is installed
if ! command -v solana &> /dev/null; then
    echo "❌ Solana CLI not found"
    echo "📦 Install with: sh -c \"\$(curl -sSfL https://release.solana.com/stable/install)\""
    exit 1
fi

# Check if spl-token is installed
if ! command -v spl-token &> /dev/null; then
    echo "❌ SPL Token CLI not found"
    echo "📦 Install with: cargo install spl-token-cli"
    exit 1
fi

# Create wallet directory
WALLET_DIR="$HOME/sonde-wallet"
mkdir -p $WALLET_DIR
cd $WALLET_DIR

echo "🔑 Creating fresh wallet..."
echo ""

# Generate keypair
solana-keygen new --no-bip39-passphrase --force --outfile $WALLET_DIR/deployer-keypair.json

DEPLOYER_PUBKEY=$(solana-keygen pubkey $WALLET_DIR/deployer-keypair.json)

echo ""
echo "✅ Wallet created!"
echo "📍 Public Key: $DEPLOYER_PUBKEY"
echo "📂 Keypair saved to: $WALLET_DIR/deployer-keypair.json"
echo ""

# Configure Solana
solana config set --keypair $WALLET_DIR/deployer-keypair.json
solana config set --url https://api.devnet.solana.com

echo "💰 Requesting devnet SOL..."
solana airdrop 2 $DEPLOYER_PUBKEY || true
sleep 3

BALANCE=$(solana balance)
echo "Current balance: $BALANCE"
echo ""

echo "🏗️  Creating SONDE token..."
echo "   - Decimals: 9"
echo "   - Supply: 100,000,000,000 (100 Billion)"
echo ""

# Create token
TOKEN_MINT=$(spl-token create-token --decimals 9 2>&1 | tee /dev/tty | grep "Creating token" | awk '{print $3}')

if [ -z "$TOKEN_MINT" ]; then
    echo "❌ Failed to create token"
    exit 1
fi

echo ""
echo "✅ Token created!"
echo "🪙 Mint Address: $TOKEN_MINT"
echo "$TOKEN_MINT" > $WALLET_DIR/token_mint.txt
echo ""

echo "📦 Creating token account..."
spl-token create-account $TOKEN_MINT

echo ""
echo "⚡ Minting 100 billion tokens..."
spl-token mint $TOKEN_MINT 100000000000

echo ""
echo "============================================"
echo "✅ DEPLOYMENT COMPLETE!"
echo "============================================"
echo ""
echo "📋 Summary:"
echo "   Token Mint: $TOKEN_MINT"
echo "   Deployer Wallet: $DEPLOYER_PUBKEY"
echo "   Total Supply: 100,000,000,000 SONDE"
echo "   Network: Devnet"
echo ""
echo "🔍 View on Explorer:"
echo "   https://explorer.solana.com/address/$TOKEN_MINT?cluster=devnet"
echo ""
echo "📂 Files saved to: $WALLET_DIR/"
echo ""
echo "⚠️  SAVE YOUR PRIVATE KEY!"
echo "   Location: $WALLET_DIR/deployer-keypair.json"
echo ""

# Save summary
cat > $WALLET_DIR/deployment_info.txt << SUMMARY
SONDE TOKEN DEPLOYMENT
======================

Date: $(date)
Network: Devnet

Token Mint: $TOKEN_MINT
Deployer Wallet: $DEPLOYER_PUBKEY
Keypair File: $WALLET_DIR/deployer-keypair.json

Total Supply: 100,000,000,000 SONDE
Decimals: 9
Mintable: YES
Freezable: NO

Explorer: https://explorer.solana.com/address/$TOKEN_MINT?cluster=devnet

NEXT STEPS:
-----------
1. Backup keypair file
2. Test transfers on devnet
3. Deploy to mainnet when ready
4. Create liquidity pool
5. Airdrop to Seeker wallets

MAINNET DEPLOYMENT:
-------------------
solana config set --url https://api.mainnet-beta.solana.com
# Fund wallet with 1-2 real SOL
spl-token create-token --decimals 9
spl-token create-account <MINT>
spl-token mint <MINT> 100000000000
SUMMARY

echo "📄 Deployment info saved to: $WALLET_DIR/deployment_info.txt"
echo ""
