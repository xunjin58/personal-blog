# Personal Blog

基于 Quartz 4 的个人博客，用来发布我在 Obsidian 里写的 AI 工作流笔记。

## 当前内容

- 首页
- About
- `我的AI工作流` 专题页
- 2 篇已发布文章
- GitHub Pages 自动部署工作流

## 本地使用

安装依赖：

```bash
npm ci
```

同步 Obsidian 里的 AI 工作流笔记：

```bash
./scripts/sync-ai-workflow.sh
```

本地预览：

```bash
npx quartz build --serve
```

默认会从这个目录同步内容：

`~/Documents/Obsidian Vault/我的AI工作流`

## 部署到 GitHub Pages

1. 在 GitHub 创建一个新的公开仓库：`personal-blog`
2. 把当前目录作为仓库推上去
3. 在仓库 `Settings -> Pages` 里把 `Source` 设为 `GitHub Actions`
4. 推送到 `v4` 分支后，工作流会自动部署

站点地址会是：

`https://xunjin58.github.io/personal-blog/`

如果你的 GitHub 用户名变化了，记得同步修改 `quartz.config.ts` 里的 `baseUrl`。
