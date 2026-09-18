# DevOps CI/CD and Monitoring Stack

A containerized DevOps environment built using Docker, Docker Compose, Jenkins, Prometheus and Grafana on AWS EC2.

## 🚀 Project Overview

This project demonstrates how multiple DevOps services can be containerized and managed using Docker Compose.

The environment includes web servers, a database, CI/CD automation and monitoring tools.

## 🏗️ Architecture

The project contains the following services:

- Apache Web Server
- Nginx Web Server
- MySQL Database
- Jenkins CI/CD
- Prometheus Monitoring
- Grafana Dashboard
- Apache Exporter

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| AWS EC2 | Cloud infrastructure |
| Ubuntu Linux | Operating system |
| Docker | Containerization |
| Docker Compose | Multi-container management |
| Apache | Web server |
| Nginx | Web server |
| MySQL | Database |
| Jenkins | CI/CD automation |
| Prometheus | Monitoring |
| Grafana | Monitoring dashboard |
| Git & GitHub | Version control |

## 📁 Project Structure

```text
devops-stack/
│
├── apache/
│   └── Dockerfile
│
├── nginx/
│   └── Dockerfile
│
├── db/
│
├── prometheus/
│   └── prometheus.yml
│
├── Jenkinsfile
├── docker-compose.yml
└── .gitignore
