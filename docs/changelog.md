# Changelog

本文件记录 Seedance Skills 项目的重要变更。

## 格式说明

每个版本记录包含：
- **日期**：变更日期
- **类型**：Added（新增）/ Changed（修改）/ Fixed（修复）/ Removed（移除）
- **Skill**：影响的 skill 名称（或 "全局" 表示影响所有 skills）
- **描述**：变更内容和原因

---

## [未发布] - 2026-05-11

### Changed - 全局
- **项目结构重组**：按照 Claude Code Skills 标准模板优化目录结构
  - 移动 `shared/references/` → `skills/_shared/`
  - 移动所有临时报告文档到 `docs/` 目录
  - 新增 `README.md`、`deploy.sh`、`tests/` 目录
  - 原因：符合 Skills 项目最佳实践，便于维护和部署

---

## [历史记录]

### 2026-05-11
- **Fixed** - seedance-country-mechbox, seedance-mechbox, seedance-world-cup-mechbox
  - 优化 generator.md 提示词结构
  - 新增 generator-optimized.md 版本

### 2026-05-08
- **Added** - seedance-world-cup-mechbox
  - 新增世界杯主题机械魔盒 skill

### 2026-05-06
- **Added** - seedance-country-mechbox
  - 新增国家主题机械魔盒 skill

### 早期版本
- 初始创建 seedance-mechbox、seedance-american-truckbox、seedance-tiktok-us-mechbox
- 初始创建生肖神兽系列 5 个 skills
- 建立 AGENTS.md 全局规则体系

---

## 维护指南

每次修改 skill 时：
1. 在对应日期下添加记录
2. 标注变更类型和影响的 skill
3. 简要说明改动原因（尤其是破坏性变更）
4. 如果是优化，说明优化前后的差异
