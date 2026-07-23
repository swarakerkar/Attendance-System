# ATTENZO – Student Attendance Management System

A web-based attendance management platform providing real-time tracking, automated reporting, and role-based dashboards for Students, Faculty, and the Head of Department.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [System Architecture](#system-architecture)
- [Role-Based Dashboards](#role-based-dashboards)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Future Scope](#future-scope)
- [Team](#team)

---

## Overview

Traditional attendance systems are manual, error-prone, and deny students real-time visibility into their own records. ATTENZO replaces paper-based muster rolls with a centralized digital platform that automates attendance marking, consolidates data in a single database, and provides instant access to attendance information for all stakeholders.

---

## Features

- **Role-based authentication** — separate dashboards for Student, Faculty, and HOD
- **Real-time attendance marking** — faculty mark attendance digitally; records save instantly
- **Student self-service** — view overall attendance %, subject-wise breakdown, and dates of presence
- **Automated report generation** — filter by date, month, student, or subject and export
- **Faculty management** — HOD can add, activate/inactivate faculty and assign subjects
- **Duplicate attendance detection** — built-in safeguard against erroneous double entries
- **File export** — attendance reports downloadable for official submission
- **Modular architecture** — designed for integration with institutional MIS

---

## Tech Stack

| Layer | Technology |
|---|---|
| Frontend | HTML, CSS, JavaScript, React |
| Backend | PHP (RESTful API) |
| Database | MySQL |
| Web Server | Apache |
| Dev Environment | XAMPP, Vite |

---

## System Architecture

```
React Frontend  →  PHP REST API  →  MySQL Database
                       ↑
                  Apache Web Server
```

The system follows a three-tier architecture with a clean separation between the UI layer, business logic, and data persistence.

---

## Role-Based Dashboards

### Student Dashboard
- View overall attendance percentage
- Subject-wise attendance breakdown
- Dates of presence per subject

### Faculty Dashboard
- View allotted subjects
- Mark attendance for a class session
- Add and edit student records (Class Teacher)
- Generate and export attendance reports

### HOD Dashboard
- Add and manage faculty
- Activate / inactivate faculty access
- View students and classes by department
- Assign subjects to faculty
- Generate department-level reports

---

## Getting Started

### Prerequisites

- [XAMPP](https://www.apachefriends.org/) (Apache + MySQL + PHP)
- [Node.js](https://nodejs.org/) and npm (for React frontend)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/attenzo.git
   cd attenzo
   ```

2. **Set up the database**
   - Start MySQL via XAMPP
   - Import the schema:
     ```bash
     mysql -u root -p < database/attenzo.sql
     ```

3. **Configure the backend**
   - Copy the example config:
     ```bash
     cp backend/config.example.php backend/config.php
     ```
   - Update `config.php` with your database credentials

4. **Start the backend**
   - Place the `backend/` folder inside your XAMPP `htdocs` directory
   - Start Apache via XAMPP

5. **Start the frontend**
   ```bash
   cd frontend
   npm install
   npm run dev
   ```

6. **Open the app**
   - Frontend: `http://localhost:5173`
   - API: `http://localhost/attenzo/backend`

---

## Project Structure

```
attenzo/
├── frontend/          # React application (Vite)
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   └── App.jsx
│   └── package.json
├── backend/           # PHP REST API
│   ├── config.php
│   ├── auth/
│   ├── attendance/
│   └── reports/
├── database/
│   └── attenzo.sql    # MySQL schema
└── README.md
```

---

## Future Scope

- **Face detection-based attendance** — AI-powered proxy prevention
- **Mobile application** — iOS and Android support
- **Biometric integration** — fingerprint-based marking
- **MIS integration** — connect with institutional management systems

---

## Team

| Name | Roll No |
|---|---|
| Pratik Prafull Ghaytidak | 25143078 |
| Prasad Sham Rohile | 25143073 |
| Swara Parag Kerkar | 24141027 |

**Mentor:** Prof. K S Gandle  
**Institution:** Government College of Engineering, Karad  
**Academic Year:** 2025–2026
