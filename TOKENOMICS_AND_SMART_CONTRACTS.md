# SONDE Tokenomics & Smart Contract Development Guide

**Version**: 1.0  
**Date**: February 7, 2026  
**Status**: Design Document

---

## 📊 TABLE OF CONTENTS

1. [Tokenomics Overview](#tokenomics-overview)
2. [Token Design](#token-design)
3. [Token Distribution](#token-distribution)
4. [Emission Schedule](#emission-schedule)
5. [Reward Mechanism](#reward-mechanism)
6. [Burn Mechanism](#burn-mechanism)
7. [Staking & Governance](#staking--governance)
8. [Smart Contract Architecture](#smart-contract-architecture)
9. [How to Build the Contracts](#how-to-build-the-contracts)
10. [Security Considerations](#security-considerations)
11. [Testing Strategy](#testing-strategy)
12. [Deployment Guide](#deployment-guide)

---

## 📈 TOKENOMICS OVERVIEW

### The SONDE Token Model

SONDE uses a **Hybrid Tokenomics Model** combining:
1. **Enterprise Revenue Sharing** (primary - sustainable long-term)
2. **Token Emissions** (bootstrapping - incentivize early adopters)
3. **Burn-and-Mint** mechanism (inspired by Helium's BME model)

### Core Principles

**1. Sustainability First**
- Real enterprise revenue funds user rewards (not just token inflation)
- 70% of enterprise revenue shared with data contributors
- 30% to protocol treasury for operations and development

**2. Fair Distribution**
- No pre-mine for team/founders (builds trust)
- Emissions favor active contributors (proof-of-contribution)
- Anti-whale mechanisms (contribution-based, not stake-based)

**3. Quality over Quantity**
- TEEPIN-attested data earns 3-5x more than unattested
- High-quality data (rare sensors, strategic locations) earns bonuses
- Spam/low-quality data earns minimal rewards

**4. Long-term Alignment**
- Token locks for early investors (prevent dumps)
- Staking rewards for long-term holders
- Governance rights for committed community members

---

## 💎 TOKEN DESIGN

### Token Specifications

**Token Name**: SONDE  
**Token Symbol**: $SONDE  
**Blockchain**: Solana (SPL Token)  
**Token Standard**: SPL Token (Fungible)  
**Decimals**: 9 (standard for Solana)  
**Total Supply**: 1,000,000,000 (1 Billion) - Fixed Cap  
**Initial Circulating Supply**: 50,000,000 (5%) at launch

### Why Solana?

1. **Low fees** (<$0.01 per transaction) - enables micro-rewards
2. **Fast finality** (~400ms) - real-time reward distribution
3. **Native Seeker integration** - seamless Seed Vault payouts
4. **Proven DeFi ecosystem** - liquidity, DEXs, lending protocols
5. **Mobile-first** - Solana Mobile Stack integration

### Token Utility

**Primary Utilities:**

1. **Reward Medium**
   - Data contributors earn $SONDE for sensor data
   - Monthly payouts directly to Seed Vault

2. **Payment Currency**
   - Enterprises pay for data access in $SONDE (or USDC → auto-converted)
   - Creates consistent buy pressure

3. **Staking**
   - Stake $SONDE to earn portion of protocol revenue
   - Staking boosts data contributor rewards (1.2-2x multiplier)

4. **Governance**
   - Vote on protocol parameters (reward splits, data pricing, etc.)
   - Propose new data types or enterprise partnerships
   - Requires minimum stake (e.g., 10,000 $SONDE) to vote

5. **Access Gating**
   - Premium features (real-time data API, custom queries) require $SONDE stake
   - Enterprise customers can pay in $SONDE for discounted rates

---

## 🎯 TOKEN DISTRIBUTION

### Allocation Breakdown

**Total Supply**: 1,000,000,000 $SONDE (100%)

| Allocation | Amount | Percentage | Vesting | Purpose |
|------------|--------|------------|---------|---------|
| **Community Rewards** | 600,000,000 | 60% | 10 years | Data contributor rewards |
| **Ecosystem Fund** | 150,000,000 | 15% | 5 years | Grants, partnerships, marketing |
| **Team & Advisors** | 100,000,000 | 10% | 4 years | Core team, advisors (1-year cliff) |
| **Investors** | 75,000,000 | 7.5% | 3 years | Grant recipients, future investors |
| **Liquidity** | 50,000,000 | 5% | Immediate | DEX liquidity, market making |
| **Treasury** | 25,000,000 | 2.5% | As needed | Operations, emergency reserve |

### Vesting Schedules

**Community Rewards** (60% - 600M tokens):
- Released over 10 years via emission schedule
- Halves every 2 years (Bitcoin-style)
- Purely merit-based distribution

**Ecosystem Fund** (15% - 150M tokens):
- 20% unlocked at launch (30M) for initial marketing
- Remaining 80% vests linearly over 5 years (24M/year)
- Controlled by DAO after Year 2

**Team & Advisors** (10% - 100M tokens):
- 1-year cliff (no tokens for first 12 months)
- Then linear vest over remaining 3 years (~2.08M/month)
- Ensures long-term commitment

**Investors** (7.5% - 75M tokens):
- Grant recipients: 2-year vest (if applicable)
- Future investors: 3-year vest with 6-month cliff
- Prevents early dumping

**Liquidity** (5% - 50M tokens):
- 50% to Jupiter/Raydium pools at launch (25M $SONDE + USDC)
- 50% reserved for market making and additional liquidity

**Treasury** (2.5% - 25M tokens):
- Emergency reserve for critical operations
- Multisig controlled (3-of-5)
- Requires governance vote for use

---

## 📅 EMISSION SCHEDULE

### Reward Emissions (10-Year Plan)

Inspired by Bitcoin's halving model + Helium's Burn-and-Mint:

**Total Community Rewards**: 600,000,000 $SONDE over 10 years

| Year | Daily Emission | Monthly Emission | Annual Emission | Total Distributed | % of Total Supply |
|------|----------------|------------------|-----------------|-------------------|-------------------|
| 1-2 | 164,384 | ~4.93M | ~60M | 120M | 12% |
| 3-4 | 82,192 | ~2.47M | ~30M | 180M | 6% |
| 5-6 | 41,096 | ~1.23M | ~15M | 210M | 3% |
| 7-8 | 20,548 | ~616K | ~7.5M | 225M | 1.5% |
| 9-10 | 10,274 | ~308K | ~3.75M | 232.5M | 0.75% |

**After Year 10**: Tail emissions at 10,274/day (~3.75M/year) indefinitely to ensure ongoing contributor incentives.

### Distribution Formula (Proof-of-Contribution)

Daily rewards distributed based on:

```
User Reward = (User Contribution Score / Total Network Contribution Score) × Daily Emission × Boost Multiplier
```

**Contribution Score Calculation:**

```
Contribution Score = 
  (Data Points Submitted × Quality Factor × TEEPIN Multiplier × Uptime Factor) + Bonuses
```

**Factors:**

- **Quality Factor**: 0.5-1.5 (based on data accuracy, completeness)
- **TEEPIN Multiplier**: 3x for attested data, 1x for unattested (early dev testing)
- **Uptime Factor**: 0.5-1.2 (rewards consistent daily contribution)
- **Bonuses**:
  - Rare sensor types (barometric pressure): +10%
  - Strategic locations (rural areas, international): +20%
  - Early adopter (first 10K users): +15%

**Boost Multipliers** (optional, requires staking):

- No stake: 1.0x
- 1K-10K $SONDE staked: 1.2x
- 10K-100K staked: 1.5x
- 100K+ staked: 2.0x

---

## 💰 REWARD MECHANISM

### Dual Revenue Model

**1. Enterprise Revenue Sharing** (Primary - Sustainable)

```
Monthly Enterprise Revenue → 70% to Contributors, 30% to Treasury
```

**Example**:
- Enterprise pays $50,000/month for data access
- $35,000 distributed to active contributors (in $SONDE)
- $15,000 to treasury (operations, development, buybacks)

**How it works**:
1. Enterprise pays in USDC (or $SONDE)
2. If USDC, protocol auto-converts to $SONDE via DEX
3. Creates buy pressure (deflationary)
4. $SONDE distributed to contributors based on their contribution scores
5. Monthly payouts on 1st of each month

**2. Token Emissions** (Bootstrapping - Early Stage)

```
Daily Emission Pool → Distributed to all active contributors
```

**Example**:
- Day 1 emission: 164,384 $SONDE
- Alice contributes 1% of network data quality → earns 1,644 $SONDE (~$16 if $SONDE = $0.01)
- Bob contributes 0.5% → earns 822 $SONDE (~$8)

### Combined Monthly Earnings

**For an average user (0.5% network contribution)**:

| Revenue Source | Amount | Notes |
|----------------|--------|-------|
| Token Emissions | ~24,650 $SONDE/month | Year 1 rate |
| Enterprise Revenue Share | ~$17.50 (1,750 $SONDE) | Assumes $50K enterprise revenue |
| **Total** | **~26,400 $SONDE/month** | **~$5-25 depending on $SONDE price** |

**Target**: $5-25/month per user translates to:
- If $SONDE = $0.0005: Need 10K-50K tokens/month → achievable
- If $SONDE = $0.005: Need 1K-5K tokens/month → easily achievable
- If $SONDE = $0.05: Need 100-500 tokens/month → highly achievable

### Payout Mechanism

**Monthly Distribution**:
1. **Accumulation Period**: Days 1-30 of each month
2. **Calculation**: Day 31 (or 1st of next month)
   - Backend tallies all contributions
   - Calculates scores and rewards
   - Generates merkle tree of all recipients
3. **Claim Period**: Days 1-7 of following month
   - Users can claim rewards via app (auto-claim option available)
   - Direct deposit to Seed Vault wallet
   - Gas fees covered by protocol (abstraction)

**Auto-Claim** (Recommended):
- Users enable auto-claim in settings
- Protocol automatically distributes to wallet on payout day
- Uses batched transactions to minimize fees

---

## 🔥 BURN MECHANISM

### Burn-and-Mint Equilibrium (BME)

Inspired by Helium's HNT model, adapted for SONDE:

**Concept**: Balance token supply with network demand

**How it works**:

1. **Data Credits (DC)** System
   - Enterprises buy "Data Credits" to access data
   - 1 DC = 1 API call or 1MB of data (fixed USD value, e.g., $0.001)
   - DCs purchased by burning $SONDE tokens

2. **Burn Mechanism**
   ```
   Enterprise burns $SONDE → Receives DCs → Uses DCs to access data
   ```

3. **Mint Mechanism**
   ```
   Contributors provide data → Earn newly minted $SONDE → Maintains emission schedule
   ```

4. **Equilibrium**
   - High demand → More $SONDE burned → Token becomes scarcer → Price increases
   - Higher price → Contributors earn more $ value → Attracts more contributors
   - More contributors → More data → Higher quality → More enterprise demand
   - Flywheel effect

### Burn Rate Examples

**Scenario 1: Low Demand (Early Stage)**
- Enterprise burns 100K $SONDE/month for 100M API calls
- Emission mints 5M $SONDE/month
- Net inflation: +4.9M/month
- Token price stable or slight decline (okay for early growth phase)

**Scenario 2: Equilibrium (Growth Stage)**
- Enterprises burn 5M $SONDE/month
- Emission mints 5M $SONDE/month
- Net inflation: 0
- Token price stable (supply/demand balanced)

**Scenario 3: High Demand (Mature Stage)**
- Enterprises burn 10M $SONDE/month
- Emission mints 5M $SONDE/month (or tail emissions at 3.75M)
- Net deflation: -5M/month
- Token price increases (deflationary)

### Additional Burn Sources

1. **Transaction Fees** (small %)
   - 0.1% fee on all $SONDE transfers
   - Burned automatically

2. **Staking Penalties**
   - Early unstaking (before minimum period): 5% penalty burned

3. **Governance Proposals**
   - Require 1,000 $SONDE deposit to submit proposal
   - Burned if proposal doesn't meet minimum votes

---

## 🔒 STAKING & GOVERNANCE

### Staking Mechanism

**Purpose**: Align long-term holders, reduce circulating supply, earn yield

**How to Stake**:
1. Lock $SONDE in staking contract
2. Choose lock period: 3 months, 6 months, 12 months, or 24 months
3. Earn rewards based on lock period and total staked amount

**Staking Rewards**:

| Lock Period | APY | Reward Source | Boost Multiplier |
|-------------|-----|---------------|------------------|
| 3 months | 5% | Protocol revenue share | 1.2x |
| 6 months | 10% | Protocol revenue share | 1.35x |
| 12 months | 18% | Protocol revenue share | 1.5x |
| 24 months | 30% | Protocol revenue share | 2.0x |

**Reward Sources**:
- 20% of protocol treasury revenue distributed to stakers
- Paid monthly in $SONDE
- Auto-compounded if user opts in

**Boost Multiplier**:
- Stakers earn bonus rewards on data contributions
- Staking 10K $SONDE + 12-month lock = 1.5x data rewards
- Encourages active participation, not just passive holding

**Early Unstaking**:
- Possible but incurs penalty:
  - <1 month in: 10% penalty
  - 1-3 months: 5% penalty
  - >3 months: 2% penalty
- Penalties are burned (deflationary)

### Governance (DAO)

**Voting Power**: 1 staked $SONDE = 1 vote

**Governance Scope**:
1. **Protocol Parameters**
   - Emission rates (after Year 2)
   - Revenue split percentages (70/30 ratio)
   - Minimum data quality thresholds
   - Fee structures

2. **Treasury Management**
   - Approve spending from ecosystem fund
   - Strategic partnerships
   - Marketing campaigns
   - Development grants

3. **Feature Proposals**
   - New sensor types to support
   - New data buyer categories
   - Mobile app improvements
   - Token buyback programs

4. **Emergency Actions**
   - Pause contracts (security incidents)
   - Update oracle parameters
   - Adjust anti-spam measures

**Proposal Process**:
1. **Submit Proposal** (requires 10K $SONDE stake as spam prevention)
2. **Discussion Period** (7 days minimum)
3. **Voting Period** (7 days)
4. **Execution** (if quorum met and majority approves)

**Quorum Requirements**:
- Minor changes: 5% of staked supply must vote
- Major changes (emission rates, revenue splits): 15% quorum
- Emergency actions: 25% quorum + 2/3 majority

---

## 🏗️ SMART CONTRACT ARCHITECTURE

### Contract Overview

SONDE protocol consists of 5 main smart contracts on Solana:

```
┌─────────────────────────────────────────────────────────┐
│                   SONDE Protocol                        │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │ Token Program│  │Reward Manager│  │ Data Registry│ │
│  │  (SPL Token) │  │   Contract   │  │   Contract   │ │
│  └──────────────┘  └──────────────┘  └──────────────┘ │
│         │                 │                  │          │
│         └────────┬────────┴─────────┬────────┘          │
│                  │                  │                   │
│         ┌────────▼────────┐  ┌──────▼──────┐           │
│         │Staking Contract │  │DAO Contract │           │
│         └─────────────────┘  └─────────────┘           │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

### 1. Token Program (SPL Token)

**Purpose**: Standard SPL token for $SONDE

**Functions**:
- `initialize_mint()` - Create token mint
- `transfer()` - Transfer tokens
- `burn()` - Burn tokens (for DC purchase)
- `approve()` - Approve spending (for staking, etc.)

**Implementation**: Use Solana SPL Token program (no need to build from scratch)

**Reference**: https://spl.solana.com/token

---

### 2. Reward Manager Contract

**Purpose**: Handle reward calculations and distributions

**State**:
```rust
pub struct RewardManager {
    pub authority: Pubkey,              // Admin authority
    pub current_epoch: u64,              // Current reward epoch (monthly)
    pub daily_emission: u64,             // Current daily emission rate
    pub total_contribution_score: u128,  // Sum of all user scores
    pub treasury_wallet: Pubkey,         // Treasury for revenue share
    pub emission_start_time: i64,        // Unix timestamp of launch
}

pub struct UserRewardAccount {
    pub user_wallet: Pubkey,
    pub contribution_score: u64,         // User's contribution score
    pub last_claim_epoch: u64,           // Last epoch user claimed
    pub pending_rewards: u64,            // Unclaimed $SONDE
    pub total_claimed: u64,              // Lifetime claimed
    pub boost_multiplier: u16,           // From staking (100 = 1.0x)
}
```

**Functions**:
```rust
// Called by backend oracle after data verification
pub fn submit_contribution(
    ctx: Context<SubmitContribution>,
    user: Pubkey,
    data_points: u32,
    quality_score: u16,        // 50-150 (100 = 1.0x)
    has_teepin: bool,
    sensor_types: Vec<SensorType>,
) -> Result<()>

// Calculate daily rewards for user
pub fn calculate_rewards(
    user_score: u64,
    total_score: u128,
    daily_emission: u64,
    boost_multiplier: u16,
) -> u64

// User claims rewards
pub fn claim_rewards(
    ctx: Context<ClaimRewards>,
) -> Result<()>

// Admin updates emission rate (follows schedule)
pub fn update_emission_rate(
    ctx: Context<UpdateEmission>,
    new_rate: u64,
) -> Result<()>

// Enterprise payment processing
pub fn process_enterprise_payment(
    ctx: Context<EnterprisePayment>,
    amount_usdc: u64,
) -> Result<()>
```

**Key Logic**:

```rust
// Contribution score calculation
let mut score = data_points as u64 * quality_score as u64 / 100;

// TEEPIN multiplier
if has_teepin {
    score *= 3;
}

// Sensor bonuses
if sensor_types.contains(&SensorType::Barometer) {
    score += score * 10 / 100; // +10%
}

// Apply to user account
user_account.contribution_score += score;
total_contribution_score += score as u128;
```

---

### 3. Data Registry Contract

**Purpose**: Store TEEPIN attestations and data provenance

**State**:
```rust
pub struct DataRegistry {
    pub authority: Pubkey,
    pub total_data_points: u64,
    pub total_users: u32,
}

pub struct DataSubmission {
    pub user: Pubkey,
    pub timestamp: i64,
    pub data_hash: [u8; 32],            // Hash of actual data
    pub teepin_signature: [u8; 64],     // TEEPIN attestation signature
    pub sensor_types: Vec<SensorType>,
    pub quality_score: u16,
    pub verified: bool,                 // Oracle verified
}

pub enum SensorType {
    CellSignal,
    WiFi,
    Bluetooth,
    Barometer,
    GPS,
    Motion,
    NetworkSpeed,
}
```

**Functions**:
```rust
// Submit data (called by backend after mobile app uploads)
pub fn register_data_submission(
    ctx: Context<RegisterData>,
    data_hash: [u8; 32],
    teepin_signature: Option<[u8; 64]>,
    sensor_types: Vec<SensorType>,
) -> Result<()>

// Verify TEEPIN attestation
pub fn verify_attestation(
    data_hash: [u8; 32],
    signature: [u8; 64],
    teepin_pubkey: Pubkey,
) -> Result<bool>

// Mark data as verified (oracle)
pub fn mark_verified(
    ctx: Context<MarkVerified>,
    data_id: Pubkey,
    quality_score: u16,
) -> Result<()>
```

---

### 4. Staking Contract

**Purpose**: Handle token staking and reward boosts

**State**:
```rust
pub struct StakingPool {
    pub authority: Pubkey,
    pub total_staked: u64,
    pub reward_rate: u64,              // APY in basis points (1000 = 10%)
    pub last_update_time: i64,
}

pub struct StakeAccount {
    pub user: Pubkey,
    pub amount_staked: u64,
    pub lock_period: LockPeriod,
    pub stake_timestamp: i64,
    pub unlock_timestamp: i64,
    pub pending_rewards: u64,
    pub boost_multiplier: u16,         // 120 = 1.2x
}

pub enum LockPeriod {
    ThreeMonths,   // 5% APY, 1.2x boost
    SixMonths,     // 10% APY, 1.35x boost
    TwelveMonths,  // 18% APY, 1.5x boost
    TwentyFourMonths, // 30% APY, 2.0x boost
}
```

**Functions**:
```rust
// Stake tokens
pub fn stake(
    ctx: Context<Stake>,
    amount: u64,
    lock_period: LockPeriod,
) -> Result<()>

// Unstake (with penalty if early)
pub fn unstake(
    ctx: Context<Unstake>,
    amount: u64,
) -> Result<()>

// Calculate staking rewards
pub fn calculate_staking_rewards(
    stake_amount: u64,
    duration: i64,
    apy_basis_points: u64,
) -> u64

// Claim staking rewards
pub fn claim_staking_rewards(
    ctx: Context<ClaimStaking>,
) -> Result<()>

// Update user's boost multiplier (called by Reward Manager)
pub fn get_boost_multiplier(
    user: Pubkey,
) -> Result<u16>
```

---

### 5. DAO Governance Contract

**Purpose**: Handle proposals and voting

**State**:
```rust
pub struct GovernanceConfig {
    pub authority: Pubkey,
    pub proposal_threshold: u64,       // Min tokens to propose (10K)
    pub voting_period: i64,            // Seconds (7 days)
    pub execution_delay: i64,          // Seconds (2 days)
    pub quorum_percentage: u8,         // 5-25%
}

pub struct Proposal {
    pub id: u64,
    pub proposer: Pubkey,
    pub title: String,
    pub description: String,
    pub proposal_type: ProposalType,
    pub voting_start: i64,
    pub voting_end: i64,
    pub votes_for: u64,
    pub votes_against: u64,
    pub status: ProposalStatus,
    pub execution_payload: Vec<u8>,    // Encoded instruction
}

pub enum ProposalType {
    ParameterChange,
    TreasurySpend,
    FeatureRequest,
    Emergency,
}

pub enum ProposalStatus {
    Active,
    Passed,
    Failed,
    Executed,
    Cancelled,
}
```

**Functions**:
```rust
// Create proposal
pub fn create_proposal(
    ctx: Context<CreateProposal>,
    title: String,
    description: String,
    proposal_type: ProposalType,
    execution_payload: Vec<u8>,
) -> Result<()>

// Vote on proposal
pub fn vote(
    ctx: Context<Vote>,
    proposal_id: u64,
    vote_for: bool,
) -> Result<()>

// Execute proposal (after passing)
pub fn execute_proposal(
    ctx: Context<ExecuteProposal>,
    proposal_id: u64,
) -> Result<()>

// Calculate voting power (from staked tokens)
pub fn get_voting_power(
    user: Pubkey,
) -> Result<u64>
```

---

## 🛠️ HOW TO BUILD THE CONTRACTS

### Prerequisites

**Install Rust & Solana CLI**:
```bash
# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Solana CLI
sh -c "$(curl -sSfL https://release.solana.com/stable/install)"

# Verify installation
solana --version
rustc --version

# Install Anchor framework (recommended for Solana development)
cargo install --git https://github.com/coral-xyz/anchor avm --locked --force
avm install latest
avm use latest

# Verify Anchor
anchor --version
```

---

### Step 1: Initialize Anchor Project

```bash
# Create new Anchor project
anchor init sonde-protocol
cd sonde-protocol

# Project structure created:
# sonde-protocol/
# ├── Anchor.toml          # Anchor configuration
# ├── Cargo.toml           # Rust dependencies
# ├── programs/
# │   └── sonde-protocol/
# │       ├── Cargo.toml
# │       └── src/
# │           └── lib.rs   # Main contract code
# ├── tests/
# │   └── sonde-protocol.ts # TypeScript tests
# └── migrations/
```

---

### Step 2: Create Token (SPL Token)

**Option A: Use Solana CLI** (Simplest):

```bash
# Create token mint
solana-keygen new -o token-mint.json

# Create token with 1B supply
spl-token create-token --decimals 9 token-mint.json

# Output: Token address (save this!)
# Creating token 7xKx...
```

**Option B: Create via Anchor** (More control):

```rust
// In programs/sonde-protocol/src/lib.rs

use anchor_lang::prelude::*;
use anchor_spl::token::{self, Mint, Token, TokenAccount};

declare_id!("YourProgramIDHere");

#[program]
pub mod sonde_protocol {
    use super::*;

    pub fn initialize_token(ctx: Context<InitializeToken>) -> Result<()> {
        let mint = &mut ctx.accounts.mint;
        
        // Set mint authority
        mint.mint_authority = COption::Some(ctx.accounts.authority.key());
        mint.decimals = 9;
        mint.is_initialized = true;
        
        Ok(())
    }
}

#[derive(Accounts)]
pub struct InitializeToken<'info> {
    #[account(
        init,
        payer = authority,
        mint::decimals = 9,
        mint::authority = authority,
    )]
    pub mint: Account<'info, Mint>,
    
    #[account(mut)]
    pub authority: Signer<'info>,
    
    pub token_program: Program<'info, Token>,
    pub system_program: Program<'info, System>,
    pub rent: Sysvar<'info, Rent>,
}
```

---

### Step 3: Build Reward Manager Contract

**File**: `programs/sonde-protocol/src/reward_manager.rs`

```rust
use anchor_lang::prelude::*;
use anchor_spl::token::{self, Token, TokenAccount, Transfer};

#[account]
pub struct RewardManager {
    pub authority: Pubkey,
    pub mint: Pubkey,                    // SONDE token mint
    pub treasury: Pubkey,                // Treasury wallet
    pub current_epoch: u64,
    pub daily_emission: u64,             // Tokens per day
    pub total_contribution_score: u128,
    pub emission_start_time: i64,
    pub bump: u8,
}

#[account]
pub struct UserRewardAccount {
    pub user: Pubkey,
    pub contribution_score: u64,
    pub last_claim_epoch: u64,
    pub pending_rewards: u64,
    pub total_claimed: u64,
    pub boost_multiplier: u16,           // 100 = 1.0x, 150 = 1.5x
    pub bump: u8,
}

impl RewardManager {
    pub const SIZE: usize = 8 + // discriminator
        32 + // authority
        32 + // mint
        32 + // treasury
        8 +  // current_epoch
        8 +  // daily_emission
        16 + // total_contribution_score
        8 +  // emission_start_time
        1;   // bump
}

impl UserRewardAccount {
    pub const SIZE: usize = 8 + // discriminator
        32 + // user
        8 +  // contribution_score
        8 +  // last_claim_epoch
        8 +  // pending_rewards
        8 +  // total_claimed
        2 +  // boost_multiplier
        1;   // bump
}

// Initialize reward manager
pub fn initialize_rewards(
    ctx: Context<InitializeRewards>,
    daily_emission: u64,
) -> Result<()> {
    let manager = &mut ctx.accounts.reward_manager;
    
    manager.authority = ctx.accounts.authority.key();
    manager.mint = ctx.accounts.mint.key();
    manager.treasury = ctx.accounts.treasury.key();
    manager.current_epoch = 0;
    manager.daily_emission = daily_emission;
    manager.total_contribution_score = 0;
    manager.emission_start_time = Clock::get()?.unix_timestamp;
    manager.bump = *ctx.bumps.get("reward_manager").unwrap();
    
    Ok(())
}

// Submit contribution (called by backend oracle)
pub fn submit_contribution(
    ctx: Context<SubmitContribution>,
    data_points: u32,
    quality_score: u16,      // 50-150 (100 = baseline)
    has_teepin: bool,
) -> Result<()> {
    let manager = &mut ctx.accounts.reward_manager;
    let user_account = &mut ctx.accounts.user_reward_account;
    
    // Calculate contribution score
    let mut score = (data_points as u64)
        .checked_mul(quality_score as u64).unwrap()
        .checked_div(100).unwrap();
    
    // TEEPIN multiplier
    if has_teepin {
        score = score.checked_mul(3).unwrap();
    }
    
    // Update user account
    user_account.contribution_score = user_account.contribution_score
        .checked_add(score).unwrap();
    
    // Update global score
    manager.total_contribution_score = manager.total_contribution_score
        .checked_add(score as u128).unwrap();
    
    msg!("Contribution submitted: {} score for user {}", score, user_account.user);
    
    Ok(())
}

// Claim rewards
pub fn claim_rewards(
    ctx: Context<ClaimRewards>,
) -> Result<()> {
    let manager = &ctx.accounts.reward_manager;
    let user_account = &mut ctx.accounts.user_reward_account;
    
    require!(user_account.pending_rewards > 0, ErrorCode::NoRewards);
    
    // Calculate rewards
    let base_reward = calculate_user_reward(
        user_account.contribution_score,
        manager.total_contribution_score,
        manager.daily_emission,
    )?;
    
    // Apply boost multiplier
    let final_reward = apply_boost(base_reward, user_account.boost_multiplier);
    
    // Transfer tokens
    let seeds = &[
        b"reward_manager",
        &[manager.bump],
    ];
    let signer = &[&seeds[..]];
    
    let cpi_context = CpiContext::new_with_signer(
        ctx.accounts.token_program.to_account_info(),
        Transfer {
            from: ctx.accounts.vault.to_account_info(),
            to: ctx.accounts.user_token_account.to_account_info(),
            authority: manager.to_account_info(),
        },
        signer,
    );
    
    token::transfer(cpi_context, final_reward)?;
    
    // Update user state
    user_account.pending_rewards = 0;
    user_account.total_claimed = user_account.total_claimed
        .checked_add(final_reward).unwrap();
    user_account.last_claim_epoch = manager.current_epoch;
    
    msg!("Rewards claimed: {} SONDE for user {}", final_reward, user_account.user);
    
    Ok(())
}

// Helper function: calculate user reward
fn calculate_user_reward(
    user_score: u64,
    total_score: u128,
    daily_emission: u64,
) -> Result<u64> {
    if total_score == 0 {
        return Ok(0);
    }
    
    let user_percentage = (user_score as u128)
        .checked_mul(1_000_000).unwrap() // 6 decimals precision
        .checked_div(total_score).unwrap();
    
    let reward = (daily_emission as u128)
        .checked_mul(user_percentage).unwrap()
        .checked_div(1_000_000).unwrap();
    
    Ok(reward as u64)
}

// Helper function: apply boost multiplier
fn apply_boost(base_reward: u64, multiplier: u16) -> u64 {
    (base_reward as u128)
        .checked_mul(multiplier as u128).unwrap()
        .checked_div(100).unwrap() as u64
}

#[derive(Accounts)]
pub struct InitializeRewards<'info> {
    #[account(
        init,
        payer = authority,
        space = RewardManager::SIZE,
        seeds = [b"reward_manager"],
        bump,
    )]
    pub reward_manager: Account<'info, RewardManager>,
    
    pub mint: Account<'info, Mint>,
    
    /// CHECK: Treasury wallet
    pub treasury: AccountInfo<'info>,
    
    #[account(mut)]
    pub authority: Signer<'info>,
    
    pub system_program: Program<'info, System>,
}

#[derive(Accounts)]
pub struct SubmitContribution<'info> {
    #[account(
        mut,
        seeds = [b"reward_manager"],
        bump = reward_manager.bump,
    )]
    pub reward_manager: Account<'info, RewardManager>,
    
    #[account(
        init_if_needed,
        payer = authority,
        space = UserRewardAccount::SIZE,
        seeds = [b"user_reward", user.key().as_ref()],
        bump,
    )]
    pub user_reward_account: Account<'info, UserRewardAccount>,
    
    /// CHECK: User's wallet (data contributor)
    pub user: AccountInfo<'info>,
    
    #[account(mut)]
    pub authority: Signer<'info>,
    
    pub system_program: Program<'info, System>,
}

#[derive(Accounts)]
pub struct ClaimRewards<'info> {
    #[account(
        seeds = [b"reward_manager"],
        bump = reward_manager.bump,
    )]
    pub reward_manager: Account<'info, RewardManager>,
    
    #[account(
        mut,
        seeds = [b"user_reward", user.key().as_ref()],
        bump = user_reward_account.bump,
        has_one = user,
    )]
    pub user_reward_account: Account<'info, UserRewardAccount>,
    
    #[account(
        mut,
        seeds = [b"vault"],
        bump,
    )]
    pub vault: Account<'info, TokenAccount>,
    
    #[account(mut)]
    pub user_token_account: Account<'info, TokenAccount>,
    
    #[account(mut)]
    pub user: Signer<'info>,
    
    pub token_program: Program<'info, Token>,
}

#[error_code]
pub enum ErrorCode {
    #[msg("No rewards available to claim")]
    NoRewards,
}
```

---

### Step 4: Build Staking Contract

**File**: `programs/sonde-protocol/src/staking.rs`

```rust
use anchor_lang::prelude::*;
use anchor_spl::token::{self, Token, TokenAccount, Transfer};

#[account]
pub struct StakingPool {
    pub authority: Pubkey,
    pub mint: Pubkey,
    pub total_staked: u64,
    pub last_update_time: i64,
    pub bump: u8,
}

#[account]
pub struct StakeAccount {
    pub user: Pubkey,
    pub amount_staked: u64,
    pub lock_period: u8,           // 0=3mo, 1=6mo, 2=12mo, 3=24mo
    pub stake_timestamp: i64,
    pub unlock_timestamp: i64,
    pub pending_rewards: u64,
    pub boost_multiplier: u16,
    pub bump: u8,
}

impl StakingPool {
    pub const SIZE: usize = 8 + 32 + 32 + 8 + 8 + 1;
}

impl StakeAccount {
    pub const SIZE: usize = 8 + 32 + 8 + 1 + 8 + 8 + 8 + 2 + 1;
}

// Stake tokens
pub fn stake(
    ctx: Context<Stake>,
    amount: u64,
    lock_period: u8,
) -> Result<()> {
    require!(lock_period <= 3, ErrorCode::InvalidLockPeriod);
    
    let pool = &mut ctx.accounts.staking_pool;
    let stake_account = &mut ctx.accounts.stake_account;
    
    // Calculate unlock time
    let clock = Clock::get()?;
    let lock_duration = match lock_period {
        0 => 90 * 24 * 60 * 60,   // 3 months
        1 => 180 * 24 * 60 * 60,  // 6 months
        2 => 365 * 24 * 60 * 60,  // 12 months
        3 => 730 * 24 * 60 * 60,  // 24 months
        _ => return Err(ErrorCode::InvalidLockPeriod.into()),
    };
    
    let unlock_time = clock.unix_timestamp + lock_duration;
    
    // Transfer tokens to vault
    token::transfer(
        CpiContext::new(
            ctx.accounts.token_program.to_account_info(),
            Transfer {
                from: ctx.accounts.user_token_account.to_account_info(),
                to: ctx.accounts.vault.to_account_info(),
                authority: ctx.accounts.user.to_account_info(),
            },
        ),
        amount,
    )?;
    
    // Update accounts
    stake_account.user = ctx.accounts.user.key();
    stake_account.amount_staked = stake_account.amount_staked
        .checked_add(amount).unwrap();
    stake_account.lock_period = lock_period;
    stake_account.stake_timestamp = clock.unix_timestamp;
    stake_account.unlock_timestamp = unlock_time;
    stake_account.boost_multiplier = get_boost_multiplier(lock_period);
    stake_account.bump = *ctx.bumps.get("stake_account").unwrap();
    
    pool.total_staked = pool.total_staked.checked_add(amount).unwrap();
    pool.last_update_time = clock.unix_timestamp;
    
    msg!("Staked {} SONDE for {} months", amount, match lock_period {
        0 => 3, 1 => 6, 2 => 12, 3 => 24, _ => 0
    });
    
    Ok(())
}

// Get boost multiplier based on lock period
fn get_boost_multiplier(lock_period: u8) -> u16 {
    match lock_period {
        0 => 120,  // 3 months = 1.2x
        1 => 135,  // 6 months = 1.35x
        2 => 150,  // 12 months = 1.5x
        3 => 200,  // 24 months = 2.0x
        _ => 100,
    }
}

// Unstake tokens
pub fn unstake(
    ctx: Context<Unstake>,
    amount: u64,
) -> Result<()> {
    let pool = &mut ctx.accounts.staking_pool;
    let stake_account = &mut ctx.accounts.stake_account;
    
    require!(
        stake_account.amount_staked >= amount,
        ErrorCode::InsufficientStake
    );
    
    let clock = Clock::get()?;
    let mut penalty = 0u64;
    
    // Calculate early unstaking penalty
    if clock.unix_timestamp < stake_account.unlock_timestamp {
        let time_staked = clock.unix_timestamp - stake_account.stake_timestamp;
        let penalty_percent = if time_staked < 30 * 24 * 60 * 60 {
            10 // <1 month: 10% penalty
        } else if time_staked < 90 * 24 * 60 * 60 {
            5  // 1-3 months: 5% penalty
        } else {
            2  // >3 months: 2% penalty
        };
        
        penalty = amount.checked_mul(penalty_percent).unwrap()
            .checked_div(100).unwrap();
        
        msg!("Early unstaking penalty: {} SONDE ({}%)", penalty, penalty_percent);
    }
    
    let amount_after_penalty = amount.checked_sub(penalty).unwrap();
    
    // Transfer tokens back to user
    let seeds = &[
        b"staking_pool",
        &[pool.bump],
    ];
    let signer = &[&seeds[..]];
    
    token::transfer(
        CpiContext::new_with_signer(
            ctx.accounts.token_program.to_account_info(),
            Transfer {
                from: ctx.accounts.vault.to_account_info(),
                to: ctx.accounts.user_token_account.to_account_info(),
                authority: pool.to_account_info(),
            },
            signer,
        ),
        amount_after_penalty,
    )?;
    
    // Burn penalty tokens
    if penalty > 0 {
        token::burn(
            CpiContext::new_with_signer(
                ctx.accounts.token_program.to_account_info(),
                token::Burn {
                    mint: ctx.accounts.mint.to_account_info(),
                    from: ctx.accounts.vault.to_account_info(),
                    authority: pool.to_account_info(),
                },
                signer,
            ),
            penalty,
        )?;
    }
    
    // Update accounts
    stake_account.amount_staked = stake_account.amount_staked
        .checked_sub(amount).unwrap();
    pool.total_staked = pool.total_staked.checked_sub(amount).unwrap();
    
    Ok(())
}

#[derive(Accounts)]
pub struct Stake<'info> {
    #[account(
        mut,
        seeds = [b"staking_pool"],
        bump = staking_pool.bump,
    )]
    pub staking_pool: Account<'info, StakingPool>,
    
    #[account(
        init_if_needed,
        payer = user,
        space = StakeAccount::SIZE,
        seeds = [b"stake", user.key().as_ref()],
        bump,
    )]
    pub stake_account: Account<'info, StakeAccount>,
    
    #[account(
        mut,
        seeds = [b"vault"],
        bump,
    )]
    pub vault: Account<'info, TokenAccount>,
    
    #[account(mut)]
    pub user_token_account: Account<'info, TokenAccount>,
    
    #[account(mut)]
    pub user: Signer<'info>,
    
    pub token_program: Program<'info, Token>,
    pub system_program: Program<'info, System>,
}

#[derive(Accounts)]
pub struct Unstake<'info> {
    #[account(
        mut,
        seeds = [b"staking_pool"],
        bump = staking_pool.bump,
    )]
    pub staking_pool: Account<'info, StakingPool>,
    
    #[account(
        mut,
        seeds = [b"stake", user.key().as_ref()],
        bump = stake_account.bump,
        has_one = user,
    )]
    pub stake_account: Account<'info, StakeAccount>,
    
    pub mint: Account<'info, Mint>,
    
    #[account(
        mut,
        seeds = [b"vault"],
        bump,
    )]
    pub vault: Account<'info, TokenAccount>,
    
    #[account(mut)]
    pub user_token_account: Account<'info, TokenAccount>,
    
    #[account(mut)]
    pub user: Signer<'info>,
    
    pub token_program: Program<'info, Token>,
}

#[error_code]
pub enum ErrorCode {
    #[msg("Invalid lock period")]
    InvalidLockPeriod,
    #[msg("Insufficient staked amount")]
    InsufficientStake,
}
```

---

### Step 5: Build & Deploy

**Build contracts**:
```bash
# Build Anchor project
anchor build

# This creates:
# - target/deploy/sonde_protocol.so (compiled program)
# - target/idl/sonde_protocol.json (Interface Definition Language)
```

**Deploy to Devnet** (for testing):
```bash
# Set Solana to devnet
solana config set --url devnet

# Airdrop SOL for gas fees
solana airdrop 2

# Deploy program
anchor deploy

# Output: Program deployed at: <PROGRAM_ID>
# Copy this ID and update in Anchor.toml and lib.rs
```

**Update Program ID**:
```rust
// In programs/sonde-protocol/src/lib.rs
declare_id!("YourProgramIDFromDeploy");
```

**Test contracts**:
```bash
# Run Anchor tests
anchor test

# Or run specific test
anchor test --skip-deploy
```

---

## 🔒 SECURITY CONSIDERATIONS

### Critical Security Measures

**1. Authority Controls**
```rust
// Require authority signature for sensitive operations
#[account(constraint = authority.key() == reward_manager.authority @ ErrorCode::Unauthorized)]
pub authority: Signer<'info>,
```

**2. Input Validation**
```rust
// Validate all inputs
require!(amount > 0, ErrorCode::InvalidAmount);
require!(quality_score >= 50 && quality_score <= 150, ErrorCode::InvalidQuality);
```

**3. Overflow Protection**
```rust
// Use checked math operations
let result = value1.checked_add(value2).unwrap();
let result = value1.checked_mul(value2).unwrap();
```

**4. Reentrancy Protection**
```rust
// Update state BEFORE external calls
user_account.pending_rewards = 0;  // Update state first
token::transfer(...)?;              // Then transfer
```

**5. Oracle Security**
- Backend oracle should use secure authentication
- Rate limiting on contribution submissions
- Monitor for suspicious patterns (spam detection)

**6. Multi-sig Treasury**
- Use Squads Protocol or similar for treasury multi-sig
- Require 3-of-5 signatures for large withdrawals

**7. Pausability**
```rust
#[account]
pub struct RewardManager {
    pub is_paused: bool,  // Emergency pause
    // ...
}

// In functions:
require!(!manager.is_paused, ErrorCode::ContractPaused);
```

**8. Upgrade Authority**
- Use Anchor's upgradeable program feature
- Transfer upgrade authority to multi-sig
- Consider timelock for upgrades

---

## 🧪 TESTING STRATEGY

### Unit Tests

**File**: `tests/sonde-protocol.ts`

```typescript
import * as anchor from "@coral-xyz/anchor";
import { Program } from "@coral-xyz/anchor";
import { SondeProtocol } from "../target/types/sonde_protocol";
import { expect } from "chai";

describe("sonde-protocol", () => {
  const provider = anchor.AnchorProvider.env();
  anchor.setProvider(provider);

  const program = anchor.workspace.SondeProtocol as Program<SondeProtocol>;
  
  it("Initializes reward manager", async () => {
    const dailyEmission = new anchor.BN(164_384 * 1e9); // 164,384 tokens
    
    const tx = await program.methods
      .initializeRewards(dailyEmission)
      .accounts({
        // ... accounts
      })
      .rpc();
    
    const manager = await program.account.rewardManager.fetch(managerPda);
    expect(manager.dailyEmission.toString()).to.equal(dailyEmission.toString());
  });
  
  it("Submits contribution and updates score", async () => {
    const dataPoints = 100;
    const qualityScore = 120; // 1.2x quality
    const hasTeepin = true;
    
    await program.methods
      .submitContribution(dataPoints, qualityScore, hasTeepin)
      .accounts({
        // ... accounts
      })
      .rpc();
    
    const userAccount = await program.account.userRewardAccount.fetch(userPda);
    
    // Expected: 100 * 120/100 * 3 (TEEPIN) = 360
    expect(userAccount.contributionScore.toNumber()).to.equal(360);
  });
  
  it("Claims rewards correctly", async () => {
    // Setup: submit contributions, advance time
    // ...
    
    const before = await getTokenBalance(userTokenAccount);
    
    await program.methods
      .claimRewards()
      .accounts({
        // ... accounts
      })
      .rpc();
    
    const after = await getTokenBalance(userTokenAccount);
    const claimed = after - before;
    
    expect(claimed).to.be.greaterThan(0);
  });
  
  it("Stakes tokens with correct boost multiplier", async () => {
    const stakeAmount = new anchor.BN(10_000 * 1e9); // 10K tokens
    const lockPeriod = 2; // 12 months
    
    await program.methods
      .stake(stakeAmount, lockPeriod)
      .accounts({
        // ... accounts
      })
      .rpc();
    
    const stakeAccount = await program.account.stakeAccount.fetch(stakePda);
    
    expect(stakeAccount.amountStaked.toString()).to.equal(stakeAmount.toString());
    expect(stakeAccount.boostMultiplier).to.equal(150); // 1.5x for 12 months
  });
  
  it("Applies early unstaking penalty", async () => {
    // Stake tokens
    await stake(10_000);
    
    // Try to unstake immediately
    const before = await getTokenBalance(userTokenAccount);
    
    await program.methods
      .unstake(new anchor.BN(10_000 * 1e9))
      .accounts({
        // ... accounts
      })
      .rpc();
    
    const after = await getTokenBalance(userTokenAccount);
    const received = after - before;
    
    // Should receive 90% (10% penalty for <1 month)
    expect(received).to.equal(9_000 * 1e9);
  });
});
```

### Integration Tests

**Test Scenarios**:
1. Full user journey (stake → contribute → claim)
2. Multiple users competing for rewards
3. Enterprise payment processing
4. Reward distribution calculations
5. Emergency pause and recovery

### Mainnet Testing Plan

**Phase 1: Testnet** (2 weeks)
- Deploy to devnet
- Internal testing with team
- Bug bounty program ($5K-10K)

**Phase 2: Mainnet Beta** (1 month)
- Deploy to mainnet with limited supply
- 100 beta testers
- Monitor closely, pause if issues

**Phase 3: Full Launch** (Month 3+)
- Open to all Seeker users
- Gradual increase in emission rate
- Continuous monitoring

---

## 🚀 DEPLOYMENT GUIDE

### Pre-Deployment Checklist

- [ ] All contracts audited (hire security firm like OtterSec, Neodyme)
- [ ] Unit tests passing (100% coverage)
- [ ] Integration tests passing
- [ ] Bug bounty completed
- [ ] Multi-sig setup for treasury
- [ ] Monitoring infrastructure ready (Sentry, Discord alerts)
- [ ] Documentation complete
- [ ] Frontend integration tested
- [ ] Backend oracle deployed and tested

### Deployment Steps

**1. Deploy Token**:
```bash
# Create token mint
spl-token create-token --decimals 9

# Create token account for vault
spl-token create-account <MINT_ADDRESS>

# Mint initial supply to vault
spl-token mint <MINT_ADDRESS> 1000000000 <VAULT_ADDRESS>
```

**2. Deploy Contracts**:
```bash
# Build
anchor build

# Deploy to mainnet
solana config set --url mainnet-beta
anchor deploy --provider.cluster mainnet
```

**3. Initialize Contracts**:
```bash
# Initialize reward manager
anchor run initialize-rewards

# Initialize staking pool
anchor run initialize-staking

# Set up treasury multi-sig
# (Use Squads Protocol UI)
```

**4. Verify Deployment**:
```bash
# Verify program deployed correctly
solana program show <PROGRAM_ID>

# Test basic functions on mainnet
anchor test --provider.cluster mainnet --skip-build
```

**5. Transfer Authorities**:
```bash
# Transfer upgrade authority to multi-sig
solana program set-upgrade-authority <PROGRAM_ID> --new-upgrade-authority <MULTISIG_ADDRESS>

# Verify
solana program show <PROGRAM_ID>
```

---

## 📚 RESOURCES & REFERENCES

### Solana Development
- **Anchor Book**: https://book.anchor-lang.com/
- **Solana Cookbook**: https://solanacookbook.com/
- **SPL Token Docs**: https://spl.solana.com/token

### DePIN Tokenomics
- **Helium HIP-20** (BME Model): https://github.com/helium/HIP/blob/main/0020-hnt-max-supply.md
- **Messari DePIN Report**: https://messari.io/report-category/depin

### Security
- **OtterSec Audit Checklist**: https://github.com/0xsomnus/solana-security
- **Neodyme Security**: https://neodyme.io/

### Example Code
- **Helium Contracts**: https://github.com/helium/helium-program-library
- **Marinade Staking**: https://github.com/marinade-finance/liquid-staking-program

---

## 🎯 NEXT STEPS

### Immediate (This Week)
1. **Set up development environment** (Rust, Solana CLI, Anchor)
2. **Create token on devnet** (test supply)
3. **Build reward manager contract** (basic version)
4. **Write unit tests**

### Short-term (Next 2 Weeks)
5. **Build staking contract**
6. **Build data registry contract**
7. **Integration tests**
8. **Deploy to devnet**
9. **Test with mobile app (mock data)**

### Medium-term (Month 2-3)
10. **Security audit** (hire OtterSec or Neodyme)
11. **Bug bounty program** ($10K pool)
12. **Build frontend integration**
13. **Deploy to mainnet** (limited beta)

### Long-term (Month 3+)
14. **Full mainnet launch**
15. **DAO governance launch**
16. **DEX listings** (Jupiter, Raydium)
17. **CEX listings** (Bybit, OKX if traction)

---

## 💡 FINAL THOUGHTS

### Why This Tokenomics Works

**1. Real Revenue from Day 1**
- Not dependent on token price appreciation
- Enterprise payments fund user rewards
- Sustainable long-term (unlike pure emission models)

**2. Fair Distribution**
- No pre-mine for team (builds trust)
- Merit-based rewards (contribute more = earn more)
- TEEPIN multiplier rewards quality (3x for attested data)

**3. Long-term Incentives**
- Staking boosts rewards (encourages holding)
- Governance rights (community ownership)
- Vesting schedules (no dumps)

**4. Deflationary Mechanisms**
- BME model burns tokens for data credits
- Transaction fees burned
- Early unstaking penalties burned

**5. Network Effects**
- More users → more data → more enterprise buyers → higher token demand
- Higher token price → more valuable rewards → attracts more users
- Flywheel effect

### Risk Factors

**1. Low Enterprise Demand Early**
- Mitigation: Token emissions bootstrap early rewards
- Mitigation: Aggressive BD efforts (letters of intent)

**2. Token Price Volatility**
- Mitigation: Stablecoin payout option (USDC)
- Mitigation: Treasury buyback program stabilizes price

**3. Smart Contract Bugs**
- Mitigation: Professional audit ($50K budget)
- Mitigation: Bug bounty program
- Mitigation: Gradual rollout (beta testing)

**4. Regulatory Risk**
- Mitigation: No securities features (no profit share to passive holders)
- Mitigation: Utility-first design (tokens used for network operation)
- Mitigation: Legal review ($10K budget)

---

## ✅ ACTION ITEMS

**For You (Project Founder)**:

1. **Learn Rust & Solana** (if not already familiar)
   - Complete Anchor tutorial (2-3 days)
   - Build simple token program (1-2 days)

2. **Hire Solana Developer** (if needed)
   - Budget: $8K-15K/month from grant
   - Post on Solana Jobs board
   - Look for Anchor framework experience

3. **Budget Allocation**
   - Smart contract development: $20K
   - Security audit: $50K (OtterSec, Neodyme)
   - Bug bounty: $10K
   - Deployment & testing: $5K

4. **Timeline**
   - Month 1-2: Build contracts
   - Month 2-3: Test & audit
   - Month 3: Deploy to mainnet beta
   - Month 4+: Full launch

**Ready to build?** Start with the Anchor tutorial and create the reward manager contract first. That's the core of the entire system.

---

**Document Version**: 1.0  
**Last Updated**: February 7, 2026  
**Status**: ✅ Ready for Development

**Let's build the tokenomics that make SONDE sustainable and fair.** 🚀💰
