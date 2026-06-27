# استفاده از نسخه رسمی و پایدار n8n
FROM docker.n8n.io/n8nio/n8n:latest

# تعیین کاربر روت برای دسترسی‌های لازم
USER root

# ایجاد پوشه برای ذخیره دیتابیس داخلی SQLite
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# برگشت به کاربر معمولی برای امنیت بیشتر
USER node

# مشخص کردن پورت اصلی n8n
EXPOSE 5678
