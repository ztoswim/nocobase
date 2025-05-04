FROM nocobase/nocobase:latest

# 拷贝本地的 storage 目录到容器
COPY storage /app/nocobase/storage

# 设置时区（可选）
ENV TZ=Asia/Kuala_Lumpur

# 设置数据库连接信息（可在 Render 上设置环境变量）
ENV DB_DIALECT=postgres
ENV DB_HOST=your-render-db-host
ENV DB_DATABASE=nocobase
ENV DB_USER=nocobase
ENV DB_PASSWORD=your-password

ENV APP_KEY=urEf8ZJugPB31MhnOr61ROaYeRwX7s6x

# 启动应用
CMD ["pm2-runtime", "start", "pm2.config.js"]
