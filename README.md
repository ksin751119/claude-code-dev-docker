# Claude Code Development Environment

這是一個為 Claude Code 開發準備的 Docker 開發環境配置。

## 使用方式

1. 將此 repository clone 到您的專案中作為 `.devcontainer` 資料夾：

```bash
git clone https://github.com/ksin751119/claude-code-dev-docker .devcontainer
```

2. 使用 VS Code 開啟您的專案，VS Code 會自動偵測到 `.devcontainer` 配置並提示您在容器中重新開啟專案。

3. 選擇 "Reopen in Container" 即可開始在 Docker 容器環境中進行開發。

## 安全性注意事項

**重要：** 如果您使用 VS Code 或 Cursor 開啟容器，為了增加安全性，建議關閉 SSH Agent Forwarding 功能：

- 在 VS Code 設定中搜尋 "Dev > Containers: Enable SSHAgent Forwarding"
- 取消勾選此選項以關閉 SSH agent forwarding

## 包含功能

- Docker 開發環境配置
- VS Code Dev Container 支援
- Telegram 通知 hook
- 預配置的開發工具和環境

## 需求

- Docker
- Visual Studio Code
- Dev Containers 擴充套件
