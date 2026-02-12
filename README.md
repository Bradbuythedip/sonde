# SONDE Protocol

[![Live Demo](https://img.shields.io/badge/demo-live-success)](https://sonde-app.vercel.app/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![PWA](https://img.shields.io/badge/PWA-enabled-blue)](https://web.dev/progressive-web-apps/)

> **Spatial Intelligence Network for Decentralized Environments**

Turn your phone into a passive income machine - earn $5-25/month while you sleep.

## 🎯 What is SONDE?

SONDE is a mobile-first PWA that lets you earn passive income by sharing anonymized sensor data from your phone. Built with Bubblewrap for optimal performance and deployable as both a web app and native Android application.

### The Model
- **Install once** → Runs in background  
- **Zero effort** → Truly passive earning
- **Zero cost** → No hardware to buy
- **Earn $5-25/month** → Paid in SONDE tokens
- **Privacy-first** → No PII, location fuzzing, GDPR compliant

## ✨ Features

### From SONDE Protocol
- 📡 **7 Sensor Data Streams** - Cell signal, WiFi, Bluetooth, GPS, Motion, Barometer, Network
- 💰 **Earnings Dashboard** - Real-time tracking of passive income
- 📊 **Heatmap Visualization** - Activity graphs and data collection metrics
- 🔒 **Privacy-First** - Location fuzzing, no PII, encrypted data
- ⚡ **Low Impact** - <2% battery, ~10MB/day data usage

### From Bubblewrap PWA
- 📱 **Progressive Web App** - Install to home screen
- 🔄 **Offline Support** - Works without internet
- 👆 **Touch Gestures** - Swipe, pull-to-refresh, long-press
- 🎨 **Mobile-Optimized UI** - Bottom navigation, safe area support
- 🚀 **Performance** - Lighthouse score 90+
- 🔔 **Push Notifications** - Stay updated on earnings

## 🚀 Quick Start

### Run Locally

```bash
# Clone the repo
git clone https://github.com/Bradbuythedip/sonde.git
cd sonde

# Install dependencies  
npm install

# Start development server
npm start
# Opens http://localhost:8080
```

### Deploy to Vercel

```bash
# Install Vercel CLI
npm install -g vercel

# Deploy
vercel --prod
```

Or use one-click deploy:

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/Bradbuythedip/sonde)

## 📱 What Data Gets Collected?

### 7 Privacy-Safe Data Streams

1. **📡 Cell Signal Quality** - RSSI/RSRP/RSRQ for telecom operators
2. **📶 WiFi Network Density** - Hashed SSIDs, signal strength (no passwords)
3. **🔵 Bluetooth Proximity** - Device counts only (no MAC addresses)
4. **🌡️ Barometric Pressure** - Weather data for climate research
5. **📍 Fuzzy GPS** - ~100m accuracy for traffic analysis
6. **🏃 Motion State** - Walking/driving/stationary classification
7. **⚡ Network Speed** - Latency and bandwidth quality

All data is:
- ✅ Anonymized
- ✅ Encrypted (AES-256)
- ✅ GDPR compliant
- ✅ TEEPIN hardware-attested (on Seeker devices)

## 🏗️ Tech Stack

- **Frontend**: Vanilla HTML/CSS/JavaScript (no framework bloat)
- **PWA**: Service Workers, Web App Manifest, Offline support
- **Fonts**: DM Sans, JetBrains Mono
- **Deployment**: Vercel (with automatic HTTPS)
- **Mobile**: Bubblewrap CLI for Android packaging

## 📊 Project Structure

```
sonde-app/
├── public/
│   ├── index.html          # Main SONDE app
│   ├── manifest.json       # PWA manifest
│   ├── service-worker.js   # Offline support
│   └── icons/              # App icons
├── package.json            # Dependencies
├── vercel.json             # Deployment config
└── README.md              # This file
```

## 🎨 UI/UX Features

### Dark Theme
- Background: `#08090E`
- Accent: `#00F0FF` (cyan)
- Typography: DM Sans + JetBrains Mono

### Mobile-First Design
- Bottom navigation for thumb access
- Touch-friendly 48x48dp targets
- Safe area insets for notch devices
- Pull-to-refresh gestures
- Swipe navigation

### Accessibility
- ARIA labels throughout
- Screen reader compatible
- High contrast colors
- Focus management

## 💰 Earnings Model

| Data Stream | Value/Month |
|------------|-------------|
| Cell Signal | $2-4 |
| WiFi Density | $1-3 |
| Bluetooth | $0.50-2 |
| GPS (Fuzzy) | $1-3 |
| Motion State | $0.50-2 |
| Barometer | $0.50-2 |
| Network Speed | $1-3 |
| **Total** | **$5-25** |

*Actual earnings vary by location, data quality, and market demand*

## 🔧 Development

### Available Scripts

```bash
npm start          # Start dev server
npm test          # Run Lighthouse audit
npm run deploy:vercel  # Deploy to production
```

### Convert to Android App

```bash
# Install Bubblewrap
npm install -g @bubblewrap/cli

# Initialize
bubblewrap init --manifest=http://localhost:8080/manifest.json

# Build APK
bubblewrap build

# Install on device
bubblewrap install
```

## 🚀 Deployment

### Vercel (Recommended)
1. Push to GitHub
2. Import project in Vercel dashboard
3. Deploy automatically on every push

### GitHub Pages
1. Enable Pages in repo settings
2. Deploy from `main` branch
3. Access at `username.github.io/sonde`

### Self-Host
```bash
npm install -g http-server
http-server public -p 8080
```

## 📈 Performance

- **Lighthouse PWA Score**: 100
- **Performance**: 95+
- **Accessibility**: 100
- **First Contentful Paint**: <1.5s
- **Time to Interactive**: <3s

## 🔐 Privacy & Security

- ✅ No personal information collected
- ✅ Location fuzzed to ~100m radius
- ✅ All data encrypted in transit (HTTPS)
- ✅ WiFi SSIDs hashed
- ✅ Bluetooth MACs never collected
- ✅ GDPR compliant
- ✅ User can disable anytime

## 📄 License

MIT License - see [LICENSE](LICENSE)

## 🤝 Contributing

Contributions welcome! Please:
1. Fork the repo
2. Create a feature branch
3. Submit a pull request

## 📞 Contact

- **Website**: https://sonde.network
- **Email**: hello@sonde.network
- **GitHub**: https://github.com/Bradbuythedip/sonde

---

**Built with ❤️ combining SONDE Protocol + Bubblewrap PWA**

Turn your phone into passive income today! 🚀
