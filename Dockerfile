# Base image olarak Node.js kullanıyoruz
FROM node:14

# Çalışma dizinini belirliyoruz
WORKDIR /app

# Paket dosyalarını kopyalıyoruz
COPY package*.json ./

# Bağımlılıkları yüklüyoruz
RUN npm install

# Uygulama kodlarını kopyalıyoruz
COPY . .

# Uygulama için kullanılan portu açıyoruz
EXPOSE 3000

# Uygulamayı başlatıyoruz
CMD ["npm", "start"]

