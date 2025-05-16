# Credit Score Prediction System

A full-stack application that predicts credit scores using machine learning. The system consists of a FastAPI backend, React frontend, and a trained sklearn model.

## Features

- Predict credit scores using machine learning (KNN classifier)
- Add new users with credit-related information
- Look up existing user credit scores by ID
- Get credit score predictions for unknown users
- RESTful API with FastAPI
- Modern React frontend with Material-UI
- Containerized deployment with Docker

## Tech Stack

- **Backend**:
  - Python 3.11
  - FastAPI
  - scikit-learn
  - pandas
  - uvicorn

- **Frontend**:
  - React
  - Material-UI
  - notistack for notifications

- **DevOps**:
  - Docker
  - Docker Compose
  - Kubernetes configurations included

## Project Structure

Workspace
(rerun without)
Collecting workspace information

I'll help you create a comprehensive README.md for your Credit Score Prediction project based on the workspace content:

├── api/ # FastAPI backend 
│ ├── main.py # API entry point 
│ ├── routes/ # API routes 
│ ├── models/ # Data models 
│ └── utils/ # Utility functions 
├── frontend/ # React frontend 
│ ├── src/ 
│ │ ├── containers/ # React components 
│ │ └── utils/ # Frontend utilities 
│ └── public/ 
├── model_artifacts/ # Trained ML model files 
│ ├── model.pkl 
│ ├── scaler.pkl 
│ └── label_encoder.pkl 
├── kubernetes/ # K8s deployment files 
└── docker-compose.yaml


## Model Information

The credit score prediction model:
- Uses KNN (K-Nearest Neighbors) classifier
- Features used:
  - Credit History Age
  - Monthly Balance
  - Annual Income
  - Changed Credit Limit
  - Outstanding Debt
- Outputs credit scores as: Good, Poor, or Standard

## Getting Started

1. Clone the repository
```bash
git clone <repository-url>

2. Start the services using Docker Compose

    docker-compose up -d

3. Access the application:
Frontend: http://localhost:3000
API: http://localhost:8000

API Endpoints
POST /predict: Get credit score prediction
POST /users: Add new user
GET /users/{id}: Get user credit score by ID

Development
1. Install backend dependencies:
    pip install -r requirements.txt

2. Install frontend dependencies:
cd frontend
npm install

3. Run backend locally:
cd api
uvicorn main:app --reload

4. Run frontend locally:
cd frontend
npm start

License
This project is licensed under the GNU General Public License v3.0

Contributing
Contributions are welcome! Please feel free to submit a Pull Request.