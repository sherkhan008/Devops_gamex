Final Project Multi-Container Website with Docker and Nginx Proxy
📌 Description

This project is a website deployed in a Docker container using Nginx. It demonstrates skills in working with Docker, configuring permissions, CI/CD, and the interaction of multiple containers via docker-compose.

✅ Fulfillment of Requirements

    Project Build in Docker:

        A Dockerfile based on nginx:alpine is used.

        The website is copied into the container and is accessible on port 8080.

    Permissions:

        The Dockerfile is configured with chmod and chown commands to ensure secure access to the website files.

    CI/CD:

        The .github/workflows/ci.yml file performs an automatic build and check on every push to the main branch.

    Multiple Containers with Interaction:

        The docker-compose.yml contains two services:

            web — the main website;

            whoami — a service based on the traefik/whoami image, displaying information about the request (IP, headers, etc.).

    Additional Topic:

        A HEALTHCHECK is added to the project, allowing Docker to automatically monitor the containers' health.

        After running docker ps, you can see the status as healthy or unhealthy for both the web and whoami containers, which is useful for monitoring and troubleshooting.

🚀 How to Run

    Clone the repository:

git clone (https://github.com/sherkhan008/DevOps)
cd Project

    Run Docker Compose:

docker-compose up -d

    Visit the following addresses:

    http://localhost:8080 — the main website

    http://localhost:8081 — the whoami container

📁 Project Structure

Project/
├── Dockerfile
├── docker-compose.yml
├── website/
│ └── index.html
│ └── favicon.svg
│ └── readme-images
│ └── assets
├── nginx/
│ └── default.conf
├── .github/
│ └── workflows/
│ └── ci.yml
