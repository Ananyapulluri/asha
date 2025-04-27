# Step 1: Use Node.js official image
FROM node:18

# Step 2: Create a working directory inside the container
WORKDIR /app

# Step 3: Copy only package.json and package-lock.json
COPY package*.json ./

# Step 4: Install the npm dependencies
RUN npm install

# Step 5: Copy the rest of your project files
COPY . .

# Step 6: (Optional) Expose the port your app runs on (like 3000)
EXPOSE 3000

# Step 7: Run your app
CMD ["npm", "start"]

