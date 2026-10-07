# 🏛️ AI-Powered Grievance Redressal System

[![Python](https://img.shields.io/badge/Python-3.9+-blue.svg)](https://www.python.org/)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.100+-green.svg)](https://fastapi.tiangolo.com/)
[![MongoDB](https://img.shields.io/badge/MongoDB-Atlas-brightgreen.svg)](https://www.mongodb.com/atlas)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> An intelligent, AI-powered web portal enabling citizens to file, track, and resolve grievances with government departments — powered by RAG-enhanced AI classification, Groq LLM, and SMS notifications.

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Quick Start](#-quick-start)
- [API Documentation](#-api-documentation)
- [Configuration](#-configuration)
- [Screenshots](#-screenshots)
- [Contributing](#-contributing)

---

## 🎯 Overview

The **AI-Powered Grievance Redressal System** is a full-stack web application built for Tamil Nadu's government that enables:
- **Citizens** to file and track grievances with multimedia support
- **Officers** to manage, update, and resolve petitions via a dedicated dashboard
- **AI** to automatically classify grievances into the correct department (out of 37 departments)

---

## 🚀 Features

| Feature | Description |
|---|---|
| 🤖 **AI Classification** | RAG + Groq LLM + Cosine Similarity for 37 Tamil Nadu departments |
| 📱 **SMS Notifications** | Twilio integration for real-time status updates |
| 📸 **Multimedia Support** | Image & audio-based grievance submissions |
| 📍 **Location Services** | Camera-based location capture with map integration |
| 👮 **Officer Dashboard** | Comprehensive grievance management for officers |
| 🆓 **Free AI Option** | EasyOCR + BLIP + Google Speech (no-cost alternative) |
| 📊 **Real-time Tracking** | Citizens can track grievance status with unique ID |
| 📱 **Responsive Design** | Works seamlessly on desktop and mobile |
| 🔍 **RAG Knowledge Base** | Curated Tamil Nadu department knowledge for accurate routing |

---

## 🛠️ Tech Stack

**Backend**
- 🐍 Python 3.9+ with **FastAPI**
- 🍃 **MongoDB Atlas** (cloud database)
- 🤖 **Groq AI** (LLM classification)
- 📡 **Twilio** (SMS notifications)
- 🔍 RAG (Retrieval-Augmented Generation) for classification

**Frontend**
- 🌐 Vanilla HTML5, CSS3, JavaScript
- 📱 Responsive design

**AI Services**
- Groq Llama3 for text classification
- EasyOCR for image text extraction (free)
- BLIP for image description (free)
- Google Speech Recognition for audio (free)

---

## 📁 Project Structure

```
GRIVANCEREDRESSALSYSTEM/
├── main.py                    # Main FastAPI server (all routes & logic)
├── rag_classifier.py          # RAG-enhanced AI classification engine
├── rag_knowledge_base.py      # Tamil Nadu departments knowledge base (37 depts)
├── sms_service.py             # Twilio SMS integration
├── ai_services.py             # OpenAI AI services (optional, paid)
├── ai_services_free.py        # Free AI services (EasyOCR, BLIP, etc.)
├── ai_chatbot.py              # AI chatbot module
├── simple_server.py           # Lightweight server variant
├── Dockerfile                 # Docker containerization
├── backend/
│   ├── .env.example           # ⚠️ Template — copy to .env and fill credentials
│   └── requirements.txt       # Python dependencies
├── frontend/
│   ├── index.html             # 🏠 Landing page
│   ├── file_grievance.html    # 📝 Grievance submission form
│   ├── track_grievance.html   # 🔍 Grievance tracking
│   ├── officer_dashboard.html # 👮 Officer management dashboard
│   ├── login_new.html         # 🔐 Citizen login
│   ├── officer_login.html     # 🔐 Officer login
│   ├── dashboard.html         # 📊 Citizen dashboard
│   ├── masterpage.html        # 🗂️ Master layout
│   ├── file_success.html      # ✅ Success confirmation page
│   ├── css/                   # Stylesheets
│   └── js/                    # JavaScript modules
└── uploads/                   # User-uploaded files (git-ignored)
```

---

## ⚡ Quick Start

### Prerequisites

- Python 3.9+
- MongoDB Atlas account (free tier works)
- Groq API key (free tier available at [console.groq.com](https://console.groq.com))

### 1. Clone the Repository

```bash
git clone https://github.com/Kumarponnan/GRIVANCEREDRESSALSYSTEM.git
cd GRIVANCEREDRESSALSYSTEM
```

### 2. Set Up Environment Variables

```bash
cp backend/.env.example backend/.env
# Edit backend/.env and fill in your credentials
```

### 3. Install Dependencies

```bash
pip install -r backend/requirements.txt
```

### 4. Run the Server

```bash
python main.py
```

The server will start at `http://localhost:8000`

### 5. Open the Frontend

Open `frontend/index.html` in your browser, or serve via the FastAPI static file server.

---

## 🔧 Configuration

Create `backend/.env` from the template:

```env
# MongoDB
MONGODB_URI=mongodb+srv://<user>:<password>@cluster0.xxxxx.mongodb.net/

# Groq AI (free tier)
GROQ_API_KEY=gsk_your_key_here

# Twilio SMS (optional)
TWILIO_ACCOUNT_SID=ACxxxxxxxxxxxxx
TWILIO_AUTH_TOKEN=your_token_here
TWILIO_PHONE_NUMBER=+1234567890
```

> ⚠️ **Never commit your `.env` file.** It is listed in `.gitignore`.

---

## 📡 API Documentation

Once the server is running, visit:

- **Swagger UI**: `http://localhost:8000/docs`
- **ReDoc**: `http://localhost:8000/redoc`

### Key Endpoints

| Method | Endpoint | Description |
|---|---|---|
| `POST` | `/grievances/submit` | Submit a new grievance |
| `GET` | `/grievances/track/{id}` | Track grievance by ID |
| `GET` | `/officer/grievances` | List all grievances (officer) |
| `PUT` | `/officer/grievances/{id}/status` | Update grievance status |
| `POST` | `/admin/test_sms` | Test SMS notification |
| `GET` | `/health` | Server health check |

---

## 🐳 Docker

```bash
docker build -t grievance-portal .
docker run -p 8000:8000 --env-file backend/.env grievance-portal
```

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License.

---

## 🙏 Acknowledgements

- Tamil Nadu Government for the grievance system concept
- [Groq](https://groq.com/) for fast LLM inference
- [FastAPI](https://fastapi.tiangolo.com/) for the excellent framework
- [MongoDB Atlas](https://www.mongodb.com/atlas) for cloud database
- [Twilio](https://www.twilio.com/) for SMS services
