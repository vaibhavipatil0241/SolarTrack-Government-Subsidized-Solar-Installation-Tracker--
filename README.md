# ☀️ SolarTrack: Government-Subsidized Solar Installation Tracker

A full-stack Java web application that allows residents to apply for solar panel installations under government-subsidized schemes. Built using Spring MVC, Hibernate, JSP, and MySQL.

---

## 👥 User Roles & Functionalities

### 🔹 Admin
- Login
- Add / View / Delete Installers
- View Registered Residents
- Approve / Reject Installation Requests
- View Subsidy Reports

### 🔹 Resident
- Register & Login
- Apply for Solar Installation (with subsidy request)
- View Application Status
- View Installation & Subsidy Report

### 🔹 Installer (Agency)
- Login
- View Approved Installation Requests
- Mark Installations as Complete
- Change Password

---

## 🗄️ Database Schema

### Database: `solarDB`

#### 1. `resident`
| Column       | Description        |
|--------------|--------------------|
| contactId    | Primary Key        |
| name         | Resident name      |
| address      | Full address       |
| email        | Email address      |
| aadhaar      | Aadhaar number     |
| password     | Encrypted password |

#### 2. `installer`
| Column       | Description        |
|--------------|--------------------|
| contactId    | Primary Key        |
| name         | Installer name     |
| licenseNo    | License number     |
| email        | Email address      |
| password     | Encrypted password |

#### 3. `installation_requests`
| Column             | Description                            |
|--------------------|----------------------------------------|
| id (AI)            | Auto-incremented ID                    |
| residentContactId  | Foreign key from `resident`            |
| systemType         | Type of solar system                   |
| capacityKW         | Requested capacity in KW               |
| requestDate        | Date of request                        |
| status             | Pending / Approved / Rejected          |

#### 4. `installations`
| Column             | Description                            |
|--------------------|----------------------------------------|
| id (AI)            | Installation ID                        |
| requestId          | Foreign key from `installation_requests` |
| installerContactId | Foreign key from `installer`           |
| installDate        | Date of installation                   |
| systemCost         | Total installation cost                |
| subsidyApproved    | Subsidy amount approved                |
| remarks            | Notes or comments                      |

#### 5. `reports`
| Column           | Description              |
|------------------|--------------------------|
| id (AI)          | Report ID                |
| installationId   | Foreign key              |
| powerGenerated   | Energy generated (kWh)   |
| reportDate       | Date of the report       |
| maintenanceNotes | Notes about maintenance  |

---

## 🛠️ Tech Stack

| Layer     | Technology            |
|-----------|------------------------|
| Backend   | Java, Spring MVC, Hibernate |
| Frontend  | JSP, HTML, CSS        |
| Database  | MySQL                 |
| Build Tool | Maven                 |
| Server    | Apache Tomcat         |

---

## 📁 Folder Structure (Important Folders)

