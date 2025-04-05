# Use Alpine-based Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
