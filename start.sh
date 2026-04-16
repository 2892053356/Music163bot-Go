#!/bin/bash

# ==================== 生成 config.ini（关键修复版） ====================
cat > config.ini << EOF
BOT_TOKEN = ${BOT_TOKEN}
MUSIC_U = ${MUSIC_U}

# 可选配置（未设置环境变量时使用默认值）
BotAPI = ${BotAPI:-https://api.telegram.org}
BotAdmin = ${BotAdmin}
BotDebug = ${BotDebug:-false}
Database = ${Database:-cache.db}
LogLevel = ${LogLevel:-info}
AutoUpdate = ${AutoUpdate:-true}
AutoRetry = ${AutoRetry:-true}
MaxRetryTimes = ${MaxRetryTimes:-3}
DownloadTimeout = ${DownloadTimeout:-60}
CheckMD5 = ${CheckMD5:-true}
SrcPath = ${SrcPath:-./src}
BotEntry = ${BotEntry:-bot.Start}
EOF

echo "✅ config.ini 已生成（变量已正确展开）"

# ==================== 启动 Bot ====================
./Music163bot-Go
