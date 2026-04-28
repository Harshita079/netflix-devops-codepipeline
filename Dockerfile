FROM public.ecr.aws/docker/library/node:18   # ✅ FIXED
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]