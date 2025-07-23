<div align="center">

# 🚀 Ansible Server Management Platform

<img src="https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white" alt="Ansible">
<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" alt="Linux">
<img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Ubuntu">
<img src="https://img.shields.io/badge/CentOS-262577?style=for-the-badge&logo=centos&logoColor=white" alt="CentOS">
<img src="https://img.shields.io/badge/NGINX-009639?style=for-the-badge&logo=nginx&logoColor=white" alt="Nginx">
<img src="https://img.shields.io/badge/Apache-D22128?style=for-the-badge&logo=apache&logoColor=white" alt="Apache">
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
<img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL">

*A comprehensive Ansible automation framework for enterprise server management*

[🚀 Getting Started](#getting-started) •
[📚 Documentation](#documentation) •
[🔧 Configuration](#configuration) •
[🤝 Contributing](#contributing)

</div>

---

## 🎯 Overview

Welcome to the **Ansible Server Management Platform** - a robust, scalable, and enterprise-ready automation framework designed to streamline your infrastructure management. This repository provides a comprehensive collection of Ansible playbooks and roles that automate critical server management tasks including system patching, package management, web server deployment, database administration, security hardening, and log management.

### ✨ Key Features

🔄 **Automated Patching** - Keep your systems up-to-date with zero-downtime patching strategies  
📦 **Package Management** - Streamlined installation and management of system packages  
🌐 **Web Server Automation** - Deploy and configure Nginx and Apache2 with best practices  
🗄️ **Database Management** - Automated MySQL and PostgreSQL setup and maintenance  
🔒 **Security Hardening** - Implement industry-standard security configurations  
📊 **Log Management** - Automated log rotation and management policies  
🎛️ **Infrastructure as Code** - Version-controlled, repeatable infrastructure deployments  

---

## 📁 Project Architecture

```bash
ansible-server-management/
├── 📋 inventory.ini              # Host inventory configuration
├── 📖 README.md                 # Project documentation
├── ⚙️ requirements.yml          # External role dependencies
│
├── 📚 playbooks/                # Main automation playbooks
│   ├── 🎭 site.yml             # Master orchestration playbook
│   ├── 🔄 patching.yml         # System patching automation
│   ├── 📦 package_install.yml  # Package management
│   ├── 🌐 webservers.yml       # Web server deployment
│   ├── 🗄️ databases.yml        # Database administration
│   ├── 🔒 hardening.yml        # Security hardening
│   └── 📊 logrotate.yml        # Log rotation management
│
├── 🎪 roles/                    # Modular automation roles
│   ├── 🔄 patching/            # System patching role
│   ├── 📦 package_installer/   # Package management role
│   ├── 🌐 nginx/               # Nginx web server role
│   ├── 🌐 apache2/             # Apache2 web server role
│   ├── 🗄️ mysql/               # MySQL database role
│   ├── 🗄️ postgresql/          # PostgreSQL database role
│   ├── 📊 logrotate/           # Log rotation role
│   └── 🔒 hardening/           # Security hardening role
│
├── 📄 templates/                # Jinja2 template files
└── 📁 files/                    # Static files and assets
```

### 🧩 Role Structure

Each role follows Ansible best practices with a standardized structure:

```bash
role_name/
├── tasks/main.yml      # Primary role tasks
├── handlers/main.yml   # Event handlers
├── vars/main.yml      # Role-specific variables
├── defaults/main.yml  # Default variable values
├── templates/         # Jinja2 templates
├── files/            # Static files
└── meta/main.yml     # Role metadata
```

---

## 🚀 Getting Started

### 📋 Prerequisites

Before you begin, ensure you have the following installed:

- **Ansible** 2.9+ (Latest version recommended)
- **Python** 3.6+
- **SSH** access to target servers
- **Sudo** privileges on target systems

### 🔧 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/ansible-server-management.git
   cd ansible-server-management
   ```

2. **Install Ansible (if not already installed)**
   ```bash
   # Using pip
   pip install ansible
   
   # Using package manager (Ubuntu/Debian)
   sudo apt update && sudo apt install ansible
   
   # Using package manager (CentOS/RHEL)
   sudo yum install ansible
   ```

3. **Install external dependencies**
   ```bash
   ansible-galaxy install -r requirements.yml
   ```

4. **Configure your inventory**
   ```bash
   cp inventory.ini.example inventory.ini
   # Edit inventory.ini with your server details
   ```

### ⚙️ Configuration

#### 📝 Inventory Setup

Edit the `inventory.ini` file to define your server groups:

```ini
[webservers]
web1.example.com
web2.example.com

[databases]
db1.example.com
db2.example.com

[all:vars]
ansible_user=your_username
ansible_ssh_private_key_file=~/.ssh/id_rsa
```

#### 🔑 SSH Key Setup

Ensure SSH keys are properly configured:

```bash
# Generate SSH key if needed
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Copy key to target servers
ssh-copy-id user@your-server.com
```

---

## 🎮 Usage Examples

### 🎭 Run the Master Playbook
```bash
ansible-playbook playbooks/site.yml -i inventory.ini
```

### 🔄 System Patching
```bash
ansible-playbook playbooks/patching.yml -i inventory.ini --limit webservers
```

### 🌐 Deploy Web Servers
```bash
ansible-playbook playbooks/webservers.yml -i inventory.ini
```

### 🗄️ Database Setup
```bash
ansible-playbook playbooks/databases.yml -i inventory.ini --ask-vault-pass
```

### 🔒 Security Hardening
```bash
ansible-playbook playbooks/hardening.yml -i inventory.ini --check
```

### 📊 Log Management
```bash
ansible-playbook playbooks/logrotate.yml -i inventory.ini
```

---

## 📚 Documentation

### 🎪 Available Roles

| Role | Description | Supported OS |
|------|-------------|-------------|
| 🔄 `patching` | Automated system updates and patches | Ubuntu, CentOS, RHEL |
| 📦 `package_installer` | Package management and installation | Ubuntu, CentOS, RHEL |
| 🌐 `nginx` | Nginx web server deployment | Ubuntu, CentOS, RHEL |
| 🌐 `apache2` | Apache2 web server setup | Ubuntu, CentOS, RHEL |
| 🗄️ `mysql` | MySQL database server | Ubuntu, CentOS, RHEL |
| 🗄️ `postgresql` | PostgreSQL database server | Ubuntu, CentOS, RHEL |
| 📊 `logrotate` | Log rotation management | Ubuntu, CentOS, RHEL |
| 🔒 `hardening` | Security hardening measures | Ubuntu, CentOS, RHEL |

### 🎛️ Playbook Details

- **`site.yml`**: Master orchestration playbook that coordinates all roles
- **`patching.yml`**: Handles OS updates, security patches, and system reboots
- **`package_install.yml`**: Manages package installation and dependencies
- **`webservers.yml`**: Deploys and configures web servers with SSL/TLS
- **`databases.yml`**: Sets up databases with security and performance tuning
- **`hardening.yml`**: Implements CIS benchmarks and security best practices
- **`logrotate.yml`**: Configures log rotation policies and cleanup tasks

---

## 🛠️ Advanced Configuration

### 🔐 Vault Usage

For sensitive data, use Ansible Vault:

```bash
# Create encrypted file
ansible-vault create group_vars/all/vault.yml

# Edit encrypted file
ansible-vault edit group_vars/all/vault.yml

# Run playbook with vault
ansible-playbook playbooks/site.yml -i inventory.ini --ask-vault-pass
```

### 🏷️ Tags

Use tags for targeted execution:

```bash
# Run only security-related tasks
ansible-playbook playbooks/site.yml -i inventory.ini --tags "security"

# Skip certain tasks
ansible-playbook playbooks/site.yml -i inventory.ini --skip-tags "reboot"
```

### 🧪 Testing

Dry run with check mode:

```bash
ansible-playbook playbooks/site.yml -i inventory.ini --check --diff
```

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### 🔄 Development Workflow

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### 📝 Contribution Guidelines

- Follow Ansible best practices
- Include comprehensive documentation
- Add tests for new features
- Ensure idempotency
- Use descriptive commit messages

### 🐛 Bug Reports

When reporting bugs, please include:
- Ansible version
- Operating system details
- Steps to reproduce
- Expected vs actual behavior
- Relevant logs or error messages

---

## 📊 Project Status

<div align="center">

![GitHub last commit](https://img.shields.io/github/last-commit/yourusername/ansible-server-management?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/yourusername/ansible-server-management?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/yourusername/ansible-server-management?style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/yourusername/ansible-server-management?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/yourusername/ansible-server-management?style=for-the-badge)

</div>

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Ansible Community** for the amazing automation platform
- **Contributors** who have helped improve this project
- **Open Source Community** for inspiration and best practices

---

## 📞 Support & Contact

<div align="center">

**Need help? Get in touch!**

[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:your-email@example.com)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/yourusername)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/yourprofile)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/yourusername)

</div>

---

<div align="center">

### ⭐ If this project helped you, please consider giving it a star!

**Made with ❤️ by the Ansible Community**

*Last updated: July 2025*

</div>
