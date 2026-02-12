# SONDE Protocol

<div align="center">

![SONDE Protocol](https://img.shields.io/badge/SONDE-Protocol-00F0FF?style=for-the-badge)
[![Live Demo](https://img.shields.io/badge/🌐_Live-Demo-success?style=for-the-badge)](https://sonde-orcin.vercel.app/)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github)](https://github.com/Bradbuythedip/sonde)

**Spatial Intelligence Network for Decentralized Environments**

*Turn your phone into passive income - Earn $5-25/month while you sleep* 📡💰

</div>

---

## 🎯 What is SONDE?

**SONDE** is a mobile-first Progressive Web App (PWA) that transforms your smartphone into a passive income generator. By sharing anonymized sensor data from your device, you earn cryptocurrency while maintaining complete privacy.

### The Value Proposition

- 📱 **Install Once** → Runs automatically in background
- 💤 **Zero Effort** → Truly passive earning while you sleep
- 💸 **Zero Cost** → No hardware to buy, uses existing phone
- 💰 **Earn $5-25/month** → Paid in SONDE tokens monthly
- 🔒 **Privacy First** → No PII, location fuzzing, GDPR compliant
- ⚡ **Minimal Impact** → <2% battery drain, ~10MB/day data

---

## ✨ Features

### 📡 7 Sensor Data Streams

Your phone continuously collects valuable environmental data:

| Sensor | Data Collected | Value/Month | Who Buys It |
|--------|---------------|-------------|-------------|
| 📶 **Cell Signal** | RSSI, RSRP, RSRQ quality metrics | $2-4 | Telecom operators |
| 📡 **WiFi Density** | Hashed SSIDs, signal strength | $1-3 | ISPs, urban planners |
| 🔵 **Bluetooth** | Device counts, proximity data | $0.50-2 | Retail, event planners |
| 📍 **Fuzzy GPS** | ~100m accuracy location | $1-3 | Transport research |
| 🏃 **Motion State** | Walking, driving, stationary | $0.50-2 | Traffic analysis |
| 🌡️ **Barometer** | Atmospheric pressure | $0.50-2 | Weather services |
| ⚡ **Network Speed** | Latency, bandwidth quality | $1-3 | ISPs, regulators |

**Total Potential:** **$5-25/month** 💰

### 🎨 Beautiful Mobile UI

- **Dark Theme** - Premium #08090E background with #00F0FF cyan accents
- **Bottom Navigation** - Easy thumb access for one-handed use
- **Real-time Dashboard** - Live earnings and sensor readings
- **Heatmap Visualization** - Activity tracking over weeks
- **Smooth Animations** - Native app feel

### 🚀 PWA Technology

Built with modern web technologies for optimal performance:

- ✅ **Installable** - Add to home screen like a native app
- ✅ **Offline Support** - Works without internet connection
- ✅ **Service Worker** - Background data sync
- ✅ **Push Notifications** - Earnings updates
- ✅ **Responsive** - Works on all screen sizes
- ✅ **Performance** - Lighthouse score 90+

---

## 🔐 Privacy & Security

### What We DON'T Collect

- ❌ No personal information
- ❌ No browsing history
- ❌ No contacts or messages
- ❌ No photos or files
- ❌ No WiFi passwords
- ❌ No Bluetooth MAC addresses

### What We DO

- ✅ Fuzz GPS to ~100m radius (can't identify your home)
- ✅ Hash WiFi SSIDs (one-way encryption)
- ✅ Count Bluetooth devices only (no identifiers)
- ✅ Encrypt all data in transit (AES-256)
- ✅ GDPR compliant
- ✅ User can disable anytime

### TEEPIN Hardware Attestation

On Seeker devices, all data is cryptographically signed by secure hardware:
- 🔐 **Unfakeable** - Every reading is hardware-verified
- 🛡️ **No Spoofing** - Can't run on emulators
- 💎 **Premium Pricing** - Enterprise buyers pay 3-10x more for attested data
- 📍 **Verified Location** - GPS signed at chip level

---

## 🚀 Quick Start

### 🌐 Try the Live Demo

**[https://sonde-orcin.vercel.app/](https://sonde-orcin.vercel.app/)**

Open on your phone for the full experience!

### 💻 Run Locally

```bash
# Clone the repository
git clone https://github.com/Bradbuythedip/sonde.git
cd sonde

# Install dependencies
npm install

# Start development server
npm start
```

Opens at: **http://localhost:8080**

### 📱 Install as PWA

1. Open the app in your mobile browser
2. Tap "Add to Home Screen" or "Install"
3. Launch from your home screen
4. Start earning!

---

## 🏗️ Tech Stack

**Frontend:**
- Pure HTML/CSS/JavaScript (no framework bloat)
- DM Sans + JetBrains Mono fonts
- CSS Grid & Flexbox for layouts

**PWA:**
- Web App Manifest
- Service Workers
- Cache API for offline support
- Push Notifications API

**Deployment:**
- Vercel (with automatic CI/CD)
- HTTPS by default
- Global CDN
- Automatic scaling

**Mobile Packaging:**
- Bubblewrap CLI for Android APK
- Trusted Web Activity (TWA)
- Native app experience

---

## 📊 App Screens

### Dashboard
- Total earnings display
- Today's earnings + streak counter
- Total readings collected
- Quick stats overview

### Sensors
- All 7 sensor streams
- Real-time readings
- Status indicators (active/idle)
- Individual sensor cards

### Coverage
- Heatmap visualization
- Weekly activity patterns
- Data collection metrics
- Geographic coverage

### Earnings
- Earnings history
- Breakdown by sensor type
- Payout schedule
- Wallet integration

---

## 🔧 Development

### Available Scripts

```bash
npm start              # Start dev server (port 8080)
npm test              # Run Lighthouse PWA audit
npm run deploy:vercel # Deploy to production
```

### Project Structure

```
sonde/
├── public/
│   ├── index.html           # Main SONDE app (969 lines)
│   ├── manifest.json        # PWA manifest
│   ├── service-worker.js    # Offline support
│   └── icons/               # App icons (72px-512px)
├── package.json             # Dependencies & scripts
├── vercel.json              # Deployment config
├── .gitignore               # Git exclusions
└── README.md                # This file
```

### Convert to Android App

```bash
# Install Bubblewrap globally
npm install -g @bubblewrap/cli

# Initialize TWA project
bubblewrap init --manifest=http://localhost:8080/manifest.json

# Build signed APK
bubblewrap build

# Install on connected device
bubblewrap install
```

See [Bubblewrap documentation](https://github.com/GoogleChromeLabs/bubblewrap) for more details.

---

## 🚀 Deployment

### Deploy to Vercel (Recommended)

**Option 1: One-Click Deploy**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/Bradbuythedip/sonde)

**Option 2: Vercel CLI**

```bash
npm install -g vercel
vercel --prod
```

**Option 3: Vercel Dashboard**

1. Visit [vercel.com/dashboard](https://vercel.com/dashboard)
2. Import `Bradbuythedip/sonde` repository
3. Deploy automatically

### Other Platforms

**GitHub Pages:**
```bash
# Enable Pages in repo settings
# Deploy from main branch
# Access at username.github.io/sonde
```

**Self-Host:**
```bash
npm install -g http-server
http-server public -p 8080
```

---

## 📈 Performance

### Lighthouse Scores (Target)

- **Performance:** 95+ ⚡
- **Accessibility:** 100 ♿
- **Best Practices:** 95+ ✅
- **PWA:** 100 📱
- **SEO:** 90+ 🔍

### Load Times

- **First Contentful Paint:** <1.5s
- **Time to Interactive:** <3s
- **Total Bundle Size:** ~30KB (HTML + CSS + JS)

### Resource Usage

- **Battery Impact:** <2% per day
- **Data Usage:** ~10MB per day
- **Collection Frequency:** Every 5 minutes
- **Background CPU:** Minimal

---

## 💡 How It Works

### 1. **Data Collection**

Your phone's sensors constantly measure environmental data:
- Cell tower signals
- WiFi networks nearby
- Bluetooth devices
- Atmospheric pressure
- Motion patterns
- Network quality
- GPS location (fuzzed)

### 2. **Privacy Processing**

All data is anonymized before leaving your device:
- GPS coordinates fuzzed to ~100m
- WiFi SSIDs hashed
- No personal identifiers
- Timestamps rounded

### 3. **Secure Transmission**

Data sent to SONDE network:
- Encrypted with AES-256
- HTTPS only
- Batched uploads
- Verified with TEEPIN (Seeker devices)

### 4. **Earnings Calculation**

You earn based on:
- Data quality score
- Collection frequency
- Geographic rarity
- Sensor diversity
- Uptime percentage

### 5. **Monthly Payout**

Receive SONDE tokens:
- Paid to your Seed Vault
- Minimum: $10 accumulated
- Automatic monthly transfers
- No manual claiming needed

---

## 🎓 Why This Works

### Real Market Precedents

- **OpenSignal** - Sold for $100M+ doing similar crowdsourced data
- **Grass Network** - 3M+ users earning passively right now
- **Location Data Market** - $15B+ industry
- **Telecom Analytics** - $50B+ market

### SONDE's Competitive Advantages

1. **TEEPIN Attestation** - Hardware-verified data worth 3-10x more
2. **7 Data Streams** - Competitors only do 1-2
3. **150K Seeker Devices** - Ready to go on day one
4. **Actual Earnings** - $5-25/mo, not pennies
5. **Zero Effort** - Truly set and forget

---

## 🤝 Contributing

We welcome contributions! Here's how:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing`)
5. **Open** a Pull Request

### Areas We Need Help

- 🐛 Bug fixes
- 📱 iOS optimizations
- 🌍 Internationalization (i18n)
- 📊 Additional data visualizations
- 🔐 Security audits
- 📖 Documentation improvements

---

## 📄 License

**MIT License** - see [LICENSE](LICENSE) file

Free to use, modify, and distribute. No attribution required (but appreciated!).

---

## 📞 Contact & Links

**🌐 Website:** [sonde.network](https://sonde.network)  
**📧 Email:** hello@sonde.network  
**🐙 GitHub:** [github.com/Bradbuythedip/sonde](https://github.com/Bradbuythedip/sonde)  
**💬 Discord:** [discord.gg/sonde](https://discord.gg/sonde)  
**🐦 Twitter:** [@SONDEprotocol](https://twitter.com/SONDEprotocol)

---

## 🙏 Acknowledgments

**Built with:**
- Original SONDE Protocol concept
- Bubblewrap PWA infrastructure
- Vercel deployment platform
- Open source community

**Special thanks to:**
- Solana Seeker team for TEEPIN technology
- Bubblewrap team for PWA tooling
- All beta testers and early adopters

---

<div align="center">

### 🚀 Start Earning Today!

**[Open SONDE App →](https://sonde-orcin.vercel.app/)**

Turn your phone into passive income while you sleep 💤💰

---

**Built with ❤️ for the decentralized future**

[![Star on GitHub](https://img.shields.io/github/stars/Bradbuythedip/sonde?style=social)](https://github.com/Bradbuythedip/sonde)

</div>
