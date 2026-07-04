# 推送到 GitHub 指南

## 手动创建 GitHub 仓库

1. 访问 https://github.com/new
2. 仓库名称: `skills`
3. 描述: `CatPaw AI skills configuration and management`
4. 选择公开或私有
5. **不要**初始化 README，因为我们已经有了
6. 点击 "Create repository"

## 推送现有项目

```bash
# 添加远程仓库
git remote add origin https://github.com/pauljohn21/skills.git

# 获取远程仓库信息
git fetch origin

# 合并远程仓库（如果存在 README.md 等文件）
git pull origin main --allow-unrelated-histories

# 推送到远程仓库
git push -u origin main
```

## 常见问题解决

### 问题1: 推送被拒绝
**错误信息**: `Updates were rejected because the remote contains work that you do not have locally`

**解决方案**:
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

### 问题2: 认证失败
**错误信息**: `Permission denied (publickey)` 或 `Invalid username or password`

**解决方案**:
1. 使用 HTTPS + Token 方式:
   ```bash
   git remote set-url origin https://<YOUR_TOKEN>@github.com/pauljohn21/skills.git
   ```
2. 或者配置 SSH key

## 验证推送成功

1. 访问 https://github.com/pauljohn21/skills
2. 确认文件已上传:
   - `skills.sh` (技能配置文件)
   - `README.md` (项目说明)

## 项目结构

```
skills/
├── skills.sh          # AI 技能配置文件
├── README.md          # 项目说明文档
└── PUSH_TO_GITHUB.md  # 本文件
```

## 后续操作

1. 在 CatPaw AI 中配置技能
2. 测试技能功能
3. 根据需要进行更新和维护