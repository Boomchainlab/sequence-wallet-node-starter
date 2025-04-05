# Sequence Wallet Node Starter

Welcome to the future of Web3 authentication. The **Sequence Wallet Node Starter** empowers your decentralized applications (dApps) with seamless wallet integrations, providing users with a frictionless login experience while supporting multiple blockchains. Leverage the cutting-edge capabilities of **Sequence Connect** to transform your dApp into a multi-chain powerhouse.

## 🚀 Prerequisites

Before embarking on this futuristic journey, ensure that you have:

- **Node.js** (v14 or later) installed.
- A **Sequence project** with an active **projectAccessKey**.
- A valid **waasConfigKey** (Base64 encoded) for secure API connections.

## ⚙️ Installation

Unlock the potential of Sequence Wallet by following these simple steps:

### 1. Clone the repository

Pull the latest version of the repository and navigate to your project directory:

```bash
git clone https://github.com/Boomchainlab/sequence-wallet-node-starter.git
cd sequence-wallet-node-starter

Run the following command to install all necessary Node.js packages:
npm install

Install the Sequence Connect SDK

Install the Sequence Connect SDK for seamless wallet integration:
npm install @0xsequence/connect

🔧 Configuration

Transform your app with the Sequence Connect SDK by defining your unique configuration settings.

Configuration Options
	•	projectAccessKey: Your Sequence project’s unique access key.
	•	waasConfigKey: The Base64-encoded key for secure integration.
	•	signIn.projectName: The name of your project, e.g., $Chonk9k.
	•	signIn.logoUrl: URL to the logo shown during the sign-in process.
	•	defaultChainId: The default blockchain network ID (e.g., 80002 for a test network).
	•	chainIds: An array of supported blockchain networks for your application.
	•	metaMask: Enable MetaMask wallet integration for a seamless user experience.
	•	enableConfirmationModal: Control the visibility of the confirmation modal to manage transactions securely.

Example Configuration

Here’s a sample configuration to kickstart your web3 authentication flow:

import { SequenceConnect, createConfig } from '@0xsequence/connect';

export function App() {
  const projectAccessKey = process.env.PROJECT_ACCESS_KEY; // Load from .env or other secure storage
  const waasConfigKey = process.env.WAAS_CONFIG_KEY; // Load from .env or other secure storage
  const enableConfirmationModal = true;

  const config = createConfig('waas', {
    projectAccessKey,
    position: "center",
    defaultTheme: "dark",
    signIn: {
      projectName: "$Chonk9k",
      logoUrl: "YOUR_LOGO_URL_HERE",
    },
    defaultChainId: 80002,
    chainIds: [421614, 11155111, 43113, 11155420, 84532, 80002, 168587773],
    appName: "$Chonk9k",
    waasConfigKey,
    google: false,
    apple: false,
    walletConnect: false,
    coinbase: false,
    metaMask: true,
    wagmiConfig: {
      multiInjectedProviderDiscovery: false,
    },
    enableConfirmationModal,
  });

  return (
    <SequenceConnect config={config}>
      <MyPage />
    </SequenceConnect>
  );
}

Supported Wallets

Dive into a multi-wallet ecosystem, allowing your users to authenticate via:
	•	MetaMask: The Web3 wallet of the future, enabling Ethereum and other compatible chains.
	•	Google, Apple, WalletConnect, Coinbase: These options can be enabled for cross-platform login, taking your app beyond borders.

🚀 Running the Application

Start your journey into the future by running the app locally:

1. Launch the Development Server
npm start

Explore Your dApp

Head to your browser and open http://localhost:3000 to interact with your app. Prepare to experience the future of Web3!

🛠️ Troubleshooting
	•	Invalid Keys: Double-check that your projectAccessKey and waasConfigKey are set correctly to ensure seamless integration.
	•	MetaMask Issues: Make sure MetaMask is installed and your browser is connected to the appropriate network.
	•	Network Configuration: Ensure the chainIds array includes the correct chain IDs for your supported networks.

🌐 License

This project is licensed under the MIT License. See the LICENSE file for more details.

⸻

Embrace the future of decentralized authentication with Sequence Wallet. Your journey to creating a next-gen Web3 app starts here. 🚀
