# 🏥 Blockchain-Based Hospital Management System

A **secure and decentralized Hospital Management System (HMS)** built using blockchain technology to ensure transparency, integrity, and accessibility of medical records. This system leverages **Ethereum Smart Contracts**, **IPFS**, and **role-based access** to create a tamper-proof healthcare platform for patients, doctors, and hospital administrators.

---

## 🔹 Overview

This project addresses the limitations of traditional hospital management systems by using **blockchain** for data immutability, **smart contracts** for automation, and **decentralized identity** for secure access. It ensures that medical records are **secure, transparent, and only accessible to authorized roles**.

---

## 🔑 Key Features

- ✅ **Decentralized Patient Records** – Prevent unauthorized access and ensure data integrity  
- ✅ **Role-Based Access Control (RBAC)** – Secure access for Patients, Doctors, and Admins  
- ✅ **Smart Contracts** – Automate appointment booking, billing, and record handling  
- ✅ **Interoperability** – Share medical records securely across hospitals  
- ✅ **Audit Trail** – Immutable logs of every access/modification  
- ✅ **Data Encryption** – Secures health data during off-chain storage  

---

## 🧱 Tech Stack

| Layer          | Technology Used                          |
|----------------|-------------------------------------------|
| **Blockchain** | Ethereum, Solidity, Smart Contracts       |
| **Frontend**   | React.js, Tailwind CSS                    |
| **Backend**    | Node.js, Express.js                       |
| **Storage**    | IPFS / MongoDB (for off-chain data)       |
| **Auth/Web3**  | Web3.js, Metamask Integration             |
| **Hosting**    | Vercel (Frontend), Infura (Blockchain Node) |

---

## 🔗 Project Demo

🌐 **Live Project:** [Explore the Project](https://sites.google.com/view/rohan8095/home)

---

## 📁 Folder Structure

/client → Frontend (React + css)
/contracts → Solidity Smart Contracts
/server → Backend API (Node.js + Express)
/scripts → Deployment & Interaction Scripts

---

## 🚀 Getting Started

### Prerequisites
- Node.js & npm
- Metamask Extension
- Ganache / Infura
- Truffle or Hardhat (for compiling/deploying smart contracts)

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/blockchain-hospital-management.git
cd blockchain-hospital-management
```
### 2. Install Dependencies
cd client
npm install
cd ../server
npm install
3. Compile & Deploy Smart Contracts
Use Truffle/Hardhat to deploy contracts to a local or test network.

bash
Copy
Edit
truffle migrate --network development
4. Run the App
bash
Copy
Edit
# In /server
npm run dev

# In /client (separate terminal)
npm start
📸 Screenshots
(Add screenshots of your UI with patient login, doctor dashboard, record view, etc.)

🛡️ Security
All patient records are encrypted before being stored off-chain.

Access is verified through smart contracts and Metamask login.

Every change is logged immutably on the blockchain.


