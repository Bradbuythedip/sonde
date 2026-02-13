# SONDE Tokenomics - Quick Reference

**TL;DR**: Sustainable, fair, deflationary tokenomics combining enterprise revenue sharing + emissions + burn mechanism.

---

## 🎯 TOKEN BASICS

**Name**: SONDE  
**Symbol**: $SONDE  
**Blockchain**: Solana (SPL Token)  
**Total Supply**: 1,000,000,000 (1 Billion) - Fixed Cap  
**Decimals**: 9

---

## 💰 HOW USERS EARN

**Average User (0.5% network contribution)**:
- **Token Emissions**: ~24,650 $SONDE/month (Year 1)
- **Enterprise Revenue**: ~1,750 $SONDE/month  
- **Total**: ~26,400 $SONDE/month
- **USD Value**: $5-25/month (depending on token price)

**Earning Formula**:
```
Your Reward = (Your Contribution Score / Total Network Score) × Daily Emissions × Boost
```

**Contribution Score**:
- Data points × Quality (0.5-1.5x)
- TEEPIN attested = 3x multiplier
- Rare sensors (barometer) = +10%
- Strategic locations (rural) = +20%
- Early adopter (first 10K) = +15%

---

## 📊 TOKEN DISTRIBUTION

| Allocation | Amount | % | Vesting |
|------------|--------|---|---------|
| Community Rewards | 600M | 60% | 10 years (emissions) |
| Ecosystem Fund | 150M | 15% | 5 years linear |
| Team & Advisors | 100M | 10% | 4 years (1yr cliff) |
| Investors | 75M | 7.5% | 3 years |
| Liquidity (DEX) | 50M | 5% | Immediate |
| Treasury | 25M | 2.5% | As needed |

---

## 📅 EMISSION SCHEDULE

**10-Year Halving Model** (like Bitcoin):

| Years | Daily Emission | Monthly | Annual | Total |
|-------|----------------|---------|--------|-------|
| 1-2 | 164,384 | 4.93M | 60M | 120M |
| 3-4 | 82,192 | 2.47M | 30M | 60M |
| 5-6 | 41,096 | 1.23M | 15M | 30M |
| 7-8 | 20,548 | 616K | 7.5M | 15M |
| 9-10 | 10,274 | 308K | 3.75M | 7.5M |

After Year 10: Tail emissions at ~3.75M/year indefinitely

---

## 💎 TOKEN UTILITY

1. **Rewards** - Data contributors earn $SONDE
2. **Payment** - Enterprises pay for data in $SONDE
3. **Staking** - Lock for APY (5-30%) + reward boosts (1.2-2x)
4. **Governance** - Vote on protocol changes
5. **Access Gating** - Premium features require staking

---

## 🔥 BURN MECHANISMS (Deflationary)

**1. Burn-and-Mint (BME)**
- Enterprises burn $SONDE → Get Data Credits → Access data
- High demand = more burns = token scarcity = price increases

**2. Transaction Fees**
- 0.1% of all transfers burned

**3. Staking Penalties**
- Early unstaking: 2-10% penalty burned

**4. Governance Spam Prevention**
- 1,000 $SONDE to submit proposal (burned if rejected)

---

## 🔒 STAKING REWARDS

| Lock Period | APY | Boost Multiplier |
|-------------|-----|------------------|
| 3 months | 5% | 1.2x |
| 6 months | 10% | 1.35x |
| 12 months | 18% | 1.5x |
| 24 months | 30% | 2.0x |

**Rewards Source**: 20% of protocol treasury revenue

**Early Unstaking Penalty**:
- <1 month: 10% penalty (burned)
- 1-3 months: 5% penalty (burned)
- >3 months: 2% penalty (burned)

---

## 💸 REVENUE MODEL

**Dual Revenue Sources**:

**1. Enterprise Revenue Sharing** (Primary - Sustainable)
- Enterprises pay $50K-200K/year for data access
- 70% distributed to contributors
- 30% to protocol treasury

**Example**:
- $50K/month enterprise revenue
- $35K (70%) → Contributors in $SONDE
- $15K (30%) → Treasury (operations, buybacks)

**2. Token Emissions** (Bootstrapping - Early Stage)
- Daily emissions distributed by contribution
- Halves every 2 years
- Purely merit-based

---

## 🏛️ GOVERNANCE

**Voting Power**: 1 staked $SONDE = 1 vote

**Can Vote On**:
- Protocol parameters (emission rates, revenue splits)
- Treasury spending (ecosystem fund, grants)
- Feature proposals (new sensors, data types)
- Emergency actions (pause contracts)

**Requirements**:
- Min 10K $SONDE staked to submit proposal
- Quorum: 5-25% of staked supply (depends on proposal type)
- Voting period: 7 days
- Execution delay: 2 days (timelock)

---

## 🛠️ SMART CONTRACTS

**5 Main Contracts**:

1. **Token Program** - SPL token (standard)
2. **Reward Manager** - Calculate & distribute rewards
3. **Data Registry** - Store TEEPIN attestations
4. **Staking Contract** - Lock tokens, earn APY + boosts
5. **DAO Contract** - Governance proposals & voting

**Built With**: Anchor framework on Solana

---

## 📈 TOKENOMICS FLYWHEEL

```
More Users 
    ↓
More/Better Data 
    ↓
More Enterprise Buyers 
    ↓
Higher Token Demand (Burns) 
    ↓
Token Price Increases 
    ↓
Rewards More Valuable 
    ↓
Attracts More Users
```

---

## ⚖️ BALANCED TOKENOMICS

**Inflationary Pressure**:
- Token emissions (decreasing over time)

**Deflationary Pressure**:
- Enterprise burns (for data credits)
- Transaction fee burns
- Staking penalties
- Locked in staking contracts

**Result**: Inflationary early (network growth) → Neutral mid-term → Deflationary long-term (mature)

---

## 🎯 KEY DIFFERENCES FROM COMPETITORS

| Feature | SONDE | Helium | Grass | Others |
|---------|-------|--------|-------|--------|
| **Revenue Source** | Real enterprise + emissions | Mostly emissions | Mostly emissions | Mostly emissions |
| **Burn Mechanism** | BME (data credits) | BME (data credits) | None | Minimal |
| **Quality Incentive** | 3x for TEEPIN | None | None | None |
| **Staking Boosts** | Yes (1.2-2x) | No | No | Rare |
| **Governance** | Full DAO | Limited | None | Limited |

**SONDE Advantage**: Real revenue + quality incentives = sustainable + fair

---

## 💡 WHY THIS WORKS

**1. Sustainable** - Not dependent on infinite inflation
**2. Fair** - Merit-based (contribute more = earn more)
**3. Deflationary** - Multiple burn mechanisms
**4. Aligned** - Long-term incentives (staking, vesting)
**5. Proven** - Inspired by Helium's successful BME model

---

## 🚀 IMPLEMENTATION TIMELINE

**Month 1-2**: Build smart contracts (Anchor/Solana)  
**Month 2-3**: Security audit + bug bounty  
**Month 3**: Deploy to mainnet (beta with 100 users)  
**Month 4+**: Full launch, DEX listings, DAO activation  

---

## 📚 DETAILED DOCS

For full technical details, see:
- **TOKENOMICS_AND_SMART_CONTRACTS.md** (41KB, comprehensive guide)
- **GRANT_PROPOSAL.md** (budget breakdown, milestones)
- **TECHNICAL_SPEC.md** (system architecture)

---

## ✅ QUICK SUMMARY FOR GRANT REVIEWERS

**Problem**: Users need sustainable earnings, not just speculative tokens  
**Solution**: Real enterprise revenue + fair emissions + deflationary burns  
**Result**: Users earn $5-25/month consistently, token gains utility and value  

**Budget**: $20K for smart contract development (part of $150K grant)  
**Timeline**: 3 months to deploy, 6 months to mature  
**Risk**: Low (proven model, professional audit, gradual rollout)  

---

**Ready to launch!** 🚀

---

**Version**: 1.0  
**Date**: February 7, 2026
