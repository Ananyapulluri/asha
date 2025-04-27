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
