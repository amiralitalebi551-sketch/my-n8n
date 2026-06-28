# استفاده از مخزن اصلی داکر هاب 
FROM n8nio/n8n:latest

# تعیین کاربر روت برای دسترسی‌های لازم
USER root

# ایجاد پوشه برای ذخیره دیتابیس داخلی SQLite
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# برگشت به کاربر معمولی برای امنیت بیشتر
USER node

# تنظیم پورت مخصوص هاگینگ فیس
ENV N8N_PORT=7860

# مشخص کردن پورت جدید n8n
EXPOSE 7860
