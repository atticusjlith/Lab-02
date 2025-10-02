# Use official Node.js image (includes Node and npm already)
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json first (if you have one)
COPY package*.json ./

# Install dependencies (safe even if none exist)
RUN npm install || true

# Copy the rest of your app
COPY . .

# Expose the port your app runs on
EXPOSE 3700

# Run the app
CMD ["node", "app.js"]
