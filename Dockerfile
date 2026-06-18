# Base image
FROM nginx:latest

# Copy the local index.html into the Nginx web server directory inside the container
COPY index.html /usr/share/nginx/html/index.html

# Copy the resume pdf from local to the Nginx web server
COPY Golu_Sharma_Resume_Cloud.pdf /usr/share/nginx/html

# Exposing port 80 so the container can receive web traffic
EXPOSE 80