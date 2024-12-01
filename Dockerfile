FROM node:18-alpine

WORKDIR /app

COPY . .
RUN npm install

ENV PORT=3000

# Build for production
RUN npm run build

# Use preview mode for production
CMD ["npm", "run", "preview", "--", "--port", "3000", "--host", "0.0.0.0"]
