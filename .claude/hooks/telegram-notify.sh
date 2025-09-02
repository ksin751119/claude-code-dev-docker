#!/bin/bash

# Telegram 通知腳本
MESSAGE_TYPE="$1"
PROJECT_NAME=$(basename "$CLAUDE_PROJECT_DIR" 2>/dev/null || echo "未知專案")
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# 檢查環境變數
if [ -z "$CLAUDE_TG_BOT_TOKEN" ] || [ -z "$CLAUDE_TG_CHAT_ID" ]; then
    echo "錯誤: 請設定環境變數 CLAUDE_TG_BOT_TOKEN 和 CLAUDE_TG_CHAT_ID"
    exit 1
fi

case "$MESSAGE_TYPE" in
    "stop")
        MESSAGE="✅ *Claude Code 主要任務已完成*%0A時間: $TIMESTAMP%0A專案: $PROJECT_NAME"
        ;;
    "subagent-stop")
        MESSAGE="🔄 *Claude Code 子任務已完成*%0A時間: $TIMESTAMP%0A專案: $PROJECT_NAME"
        ;;
    "notification")
        MESSAGE="⚠️ *Claude Code 需要您的許可*%0A時間: $TIMESTAMP%0A專案: $PROJECT_NAME"
        ;;
    *)
        MESSAGE="📝 *Claude Code 通知*%0A時間: $TIMESTAMP%0A專案: $PROJECT_NAME"
        ;;
esac

# 發送 Telegram 訊息
curl -s -X POST "https://api.telegram.org/bot${CLAUDE_TG_BOT_TOKEN}/sendMessage" \
    -d "chat_id=${CLAUDE_TG_CHAT_ID}" \
    -d "text=${MESSAGE}" \
    -d "parse_mode=Markdown"
