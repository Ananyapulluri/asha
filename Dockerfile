# Use an official Node.js image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Build the Next.js project
RUN npm run build

# Expose the port (Next.js default port)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
# Start from a base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your project files
COPY . .

# Expose port (optional, depending on your app)
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
