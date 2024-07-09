# Urban Bike Real-Time Dashboard Application

## Overview
The Urban Bike Real-Time Dashboard Application is a Flask-based web application that provides real-time visualizations of Dublin bike data. It integrates a Power BI dashboard updated daily with data from the Power BI Web and includes features for managing station data, contacting developers, and viewing project details.

## Features
- **Real-Time Visualization**: Power BI dashboard displaying up-to-date bike station data.
- **Data Management**: Authorized users can add, edit, and delete station data through a web interface.
- **Contact Form**: Users can send messages to the development team.
- **Project Information**: Detailed information about the project's vision, mission, and goals.

## Systems Architecture
![image](https://github.com/Pradyumna-yes/Urban-Bikes/assets/96283346/417f7b7a-2ae7-4180-87b5-cacccac51287)
  

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the Application](#running-the-application)
- [Usage](#usage)
  - [Accessing the Application](#accessing-the-application)
  - [User Interface](#user-interface)
  - [Managing Data](#managing-data)
  - [Contacting Developers](#contacting-developers)
- [Deployment](#deployment)
  - [Docker Deployment](#docker-deployment)
  - [Running Locally](#running-locally)
- [Technical Details](#technical-details)
- [Authors](#authors)
- [License](#license)

## Getting Started

### Prerequisites
- Docker Desktop
- Git
- Python 3.x (for local development)
- Coolify (for self-hosting Docker containers)

### Installation
1. **Clone the Repository**:
    ```sh
    git clone [YOUR GITHUB REPO URL]
    cd [YOUR REPO DIRECTORY]
    ```
2. **Set Up a Virtual Environment (Optional for Local Development)**:
    ```sh
    python -m venv venv
    .\venv\Scripts\Activate
    ```
3. **Install Dependencies**:
    ```sh
    pip install -r requirements.txt
    ```

### Running the Application

### Docker Deployment
1. **Build the Docker Image**:
    ```sh
    docker build -t urban-bike-dashboard .
    ```
2. **Run the Docker Container**:
    ```sh
    docker run -d -p 5000:5000 --name urban-bike-dashboard -e SQL_SERVER=<your_sql_server> -e SQL_DB=<your_db_name> -e SQL_USER=<your_db_user> -e SQL_PASSWORD=<your_db_password> urban-bike-dashboard
    ```

3. **Deploy on Coolify**:
   - Access your Coolify dashboard.
   - Create a new application using "Docker" as the deployment method.
   - Provide the necessary Docker configuration including the Docker image and environment variables.

4. **Set Up Scheduled Task for ELT Process in Coolify**:
   - Task Name: ELT Daily Update
   - Schedule: Daily at midnight (or any preferred time)
   - Command:
     ```sh
     python /path/to/your/ELT.py
     ```

### Running Locally
1. **Clone the Repository**:
    ```sh
    git clone [YOUR GITHUB REPO URL]
    cd [YOUR REPO DIRECTORY]
    ```
2. **Set Up a Virtual Environment**:
    ```sh
    python -m venv venv
    .\venv\Scripts\Activate
    ```
3. **Install Dependencie**:
    ```sh
    pip install -r requirements.txt
    ```
4. **Set Up Environment Variables**:
    Create a config file in the root directory and add the necessary environment variables:
    ```sh
    SQL_SERVER=<your_sql_server>
    SQL_DB=<your_db_name>
    SQL_USER=<your_db_user>
    SQL_PASSWORD=<your_db_password>
    ```
5. **Run the Application**:
    ```sh
    python run.py
    ```

## Usage

### Accessing the Application
Navigate to the following URL in your web browser:
http://dwgcocg.144.24.144.132.sslip.io/

### Docker Images
- paddu007/urban_wheel
- sangeetha0007/urban-wheel

### User Interface
- **Dashboard**: Displays real-time visualizations using Power BI.
- **Data Table**: Allows users to view and manage station data.
- **Contact Us**: Provides a form for users to send messages to the developers.
- **About Us**: Contains information about the project's vision, mission, and goals.

### Managing Data
- **Adding Data**:
  - Navigate to Data Table and click "Add".
  - Fill in the necessary details and submit the form.
- **Editing Data**:
  - Select the record to edit and click "Edit".
  - Update the details and submit the form.
- **Deleting Data**:
  - Select the record to delete and click "Delete".
  - Confirm the deletion action when prompted.

### Contacting Developers
- **Sending a Message**:
  - Navigate to Contact Us.
  - Fill in the form with your name, email address, subject, and message.
  - Click "Submit" to send your message.

## Deployment

### Docker Deployment
Refer to the Docker Deployment steps in the [Running the Application](#running-the-application) section.

### Running Locally
Refer to the Running Locally steps in the [Running the Application](#running-the-application) section.

## Technical Details
- **Backend**: Flask (Python)
- **Frontend**: HTML, CSS, AJAX
- **Database**: SQL Server
- **APIs**: Dublin bike API
- **Data Manipulation**: Python scripts for ELT processes

### Configuration Files
- **ETL.py**: Replace the dummy credentials with your actual database credentials.
- **routes.py**: Update with your username and password for user authentication.
- **config.py**: Replace the dummy SQL login details with your actual SQL server login information.

## Contributors
- **Sangeetha Ramesh**
- **Pradyumna Shivanandaiah**

## License
This project is licensed under the MIT License - see the LICENSE file for details.
