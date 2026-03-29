# OSS Audit — Linux Kernel
**Student Name:** Sayna Patel
**Roll Number:** 24BEY10080
**Course:** Open Source Software
**Chosen Software:** Linux Kernel (GPL v2)

---

## 📁 Repository Structure
| File | Description |
|------|-------------|
| script1.sh | System Identity Report |
| script2.sh | FOSS Package Inspector |
| script3.sh | Disk and Permission Auditor |
| script4.sh | Log File Analyzer |
| script5.sh | Open Source Manifesto Generator |

---

## 📜 Script Descriptions

### Script 1 — System Identity Report
Displays system information including distro name, kernel version, logged in user, home directory, uptime and date/time. Also states the Linux Kernel license.

### Script 2 — FOSS Package Inspector
Checks if the Linux Kernel package is installed, displays its details, and uses a case statement to print open source philosophy notes.

### Script 3 — Disk and Permission Auditor
Loops through important system directories and reports their size, owner and permissions. Also checks the kernel boot directory.

### Script 4 — Log File Analyzer
Reads a log file line by line, counts how many times a keyword appears, and prints the last 5 matching lines.

### Script 5 — Open Source Manifesto Generator
Asks the user 3 interactive questions and generates a personalised open source philosophy statement saved to a .txt file.

---

## ▶️ How to Run Each Script

### Requirements
- Linux or WSL (Windows Subsystem for Linux)
- Bash shell

### Steps
Clone the repository:
\```bash
git clone https://github.com/sayna24bey10080-gif/oss-audit-Sayna-Patel.git
cd oss-audit-Sayna-Patel
\```

Make scripts executable:
\```bash
chmod +x *.sh
\```

Run each script:
\```bash
bash script1.sh
bash script2.sh
bash script3.sh
bash script4.sh
bash script5.sh /var/log/dpkg.log install
\```

---

## 📦 Dependencies
- bash
- git
- dpkg
- coreutils (ls, du, df)
- grep, awk, cut

---

## 📄 License
This project is submitted as part of the OSS NGMC Course at VIT.# oss-audit-Sayna-Patel
