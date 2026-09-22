<div align="center">

# 🚀 DevOps CI/CD & Monitoring Stack

### 🐳 Docker • 🔄 Jenkins • 📊 Prometheus • 📈 Grafana • ☁️ AWS EC2

A containerized DevOps environment demonstrating **CI/CD automation,
containerization, web servers, database services and monitoring**
on AWS EC2.

<br>

<img src="https://img.shields.io/badge/AWS-EC2-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white"/>
<img src="https://img.shields.io/badge/Docker-Compose-2496ED?style=for-the-badge&logo=docker&logoColor=white"/>
<img src="https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?style=for-the-badge&logo=jenkins&logoColor=white"/>
<img src="https://img.shields.io/badge/Prometheus-Monitoring-E6522C?style=for-the-badge&logo=prometheus&logoColor=white"/>
<img src="https://img.shields.io/badge/Grafana-Dashboard-F46800?style=for-the-badge&logo=grafana&logoColor=white"/>

<br><br>

<a href="https://github.com/sakesakeer2000-cyber/devops-stack">
<img src="https://img.shields.io/badge/⭐%20View%20Repository-181717?style=for-the-badge&logo=github"/>
</a>

</div>

---

# ⚡ Project at a Glance

<table>
<tr>
<td align="center">☁️<br><b>Cloud</b><br>AWS EC2</td>
<td align="center">🐳<br><b>Containers</b><br>Docker</td>
<td align="center">🔄<br><b>CI/CD</b><br>Jenkins</td>
<td align="center">📊<br><b>Monitoring</b><br>Prometheus</td>
<td align="center">📈<br><b>Dashboard</b><br>Grafana</td>
</tr>
</table>

---

# 🏗️ Architecture

```mermaid
flowchart TB

    USER["👨‍💻 Developer / User"]
    GIT["🐙 GitHub"]

    EC2["☁️ AWS EC2<br/>Ubuntu Linux"]

    DOCKER["🐳 Docker Compose"]

    JENKINS["🔄 Jenkins<br/>CI/CD"]

    APACHE["🌐 Apache<br/>:8081"]
    NGINX["🌐 Nginx<br/>:8082"]
    MYSQL["🗄️ MySQL<br/>:3306"]

    PROM["📊 Prometheus<br/>:9090"]
    GRAFANA["📈 Grafana<br/>:3000"]

    EXPORTER["📡 Apache Exporter<br/>:9117"]

    USER --> GIT
    GIT --> JENKINS

    EC2 --> DOCKER
    JENKINS --> DOCKER

    DOCKER --> APACHE
    DOCKER --> NGINX
    DOCKER --> MYSQL
    DOCKER --> PROM
    DOCKER --> GRAFANA
    DOCKER --> EXPORTER

    EXPORTER --> PROM
    PROM --> GRAFANA
