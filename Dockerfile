FROM node:20-slim

# Set working directory
WORKDIR /app

# Application config
ENV APP_PORT=6880

COPY package*.json ./

RUN npm install --ignore-scripts

COPY . .

# Expose port
EXPOSE ${APP_PORT}

CMD ["node", "polaris.js"]