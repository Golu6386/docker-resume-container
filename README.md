# Containerized Resume Site (Nginx & Docker)

A foundational DevOps project focused on containerization, infrastructure parity, and asset management. This project takes my digital resume and packages it into an isolated, lightweight Docker container running a tuned Nginx web server.

## 🏗️ Architecture & Flow
1. **Host System:** Sends a request to `http://localhost:8080`.
2. **Port Forwarding:** Docker bridges host port `8080` to container port `80`.
3. **Web Server:** Nginx container serves the static assets (`index.html` and `resume.pdf`) deterministically.

## 🛠️ Tech Stack
* **Containerization:** Docker
* **Base Image:** `nginx:latest`
* **Web Server:** Nginx
* **Assets:** HTML, CSS, PDF Data Integration

## 💡 Key Challenges & Troubleshooting
* **Asset Copying & Dependencies:** Initially encountered a `404 Not Found` error when loading the application. Diagnosed that while the raw HTML configuration was being deployed, the dependent resume PDF asset was missing within the isolated file system boundary.
* **Resolution:** Refined the `Dockerfile` architecture from single-file routing to an explicit folder context sync (`COPY . /usr/share/nginx/html/`), resolving the asset gap and establishing full environment portability.