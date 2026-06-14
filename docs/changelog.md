# Changelog

本文件记录 Seedance Skills 项目的重要变更。

## 格式说明

每个版本记录包含：
- **日期**：变更日期
- **类型**：Added（新增）/ Changed（修改）/ Fixed（修复）/ Removed（移除）
- **Skill**：影响的 skill 名称（或 "全局" 表示影响所有 skills）
- **描述**：变更内容和原因

---

## [未发布] - 2026-06-14

### Changed - 全局
- 参考图版现在要求初始结构盒体材质继承目标物参考图的主材质、表面工艺、磨损、高光和软硬材料对比。
- 强化参考图材质优先级：所有 generator 新增“参考图材质锁定”句，要求初始盒体 60-70% 可见外壳继承 @Image1 的主材质，功能分缝、铰链、螺栓和传动窗只作为嵌入式功能结构。
- 将主体段和反剧透段中容易回退到通用结构盒体的措辞改为“参考图材质主导的硬边结构外壳”。
- 默认输出策略统一为详细完整版提示词；`--full` / `--完整版` 仅作为兼容别名，`--compact` 只在硬字符上限下做结构保留型精简。
- 所有可变形盒体类 generator 的终态段新增完整锁定后的合理轻微小动作收尾，且该动作必须来自已完成结构。
- 清理 generator 中残留的独立短版 / 优化版输出块，避免和完整输出合同冲突。
- 新增物理守恒约束：禁止完整零件、完整目标物或完整小模型先缩小藏入盒体再变大；所有体量变化必须来自折叠、套叠、分层收纳、滑轨、铰链和伸缩节的可见展开。

### Fixed - 全局
- 将旧示例中暗示镜头重置的碰撞后表述改为“震动在同一连续镜头内自然衰减”，避免误导为新镜头。

---

## [未发布] - 2026-05-13

### Removed - 全局
- 移除所有 skills 中独立的短版/优化版提示词模板。
- 所有 `SKILL.md` 入口统一只指向 `references/generator.md` 作为完整输出合同。
- `AGENTS.md` 和 `README.md` 改为要求完整合同优先；仅在平台硬字符限制下做结构保留型压缩。

---

## [未发布] - 2026-05-12

### Changed - 全局 🔄 **重大架构改进**

- **从"套模板"转向"倒推式"生成逻辑**
  - **问题**：之前所有 skills 都套用固定模板填空，只改变颜色/材质变量，导致提示词缺乏针对性
  - **改进**：引入倒推式设计理念 - 从目标物的结构特征倒推可变形盒体的设计
  - **核心变化**：
    1. 新增 `skills/_shared/reverse-engineering-template.md` - 倒推式生成模板
    2. 新增 `docs/reverse-engineering-examples.md` - 新旧方式对比示例（龙、螃蟹、卡车）
    3. 新增 `docs/reverse-engineering-audit.md` - 架构审查报告
    4. 更新 `AGENTS.md` - 新增"Reverse Engineering Process"核心流程
    5. 更新 `README.md` - 说明倒推式设计理念
    6. 更新所有 10 个 skills 的 `SKILL.md` - 应用倒推逻辑工作流
  - **生成流程**：
    ```
    旧：查映射表 → 填变量 → 套固定时间轴
    新：分析目标物结构 → 设计盒子形态 → 定制变形序列
    ```
  - **效果对比**：
    - ❌ 旧方式：所有目标物用同一套 [0s]触发 [2s]砸桌 [4s]底座 [6s]装甲 [8s]前端 [10s]锁定
    - ✅ 新方式：龙用脊椎波浪解锁，螃蟹用甲壳放射翻开，卡车用车头车厢分段展开
  - **验证标准**：删掉目标物名称后，读者能从变形逻辑猜出是什么 → 说明不再套模板
  - **影响范围**：全部 10 个 skills
    - seedance-mechbox
    - seedance-american-truckbox
    - seedance-tiktok-us-mechbox
    - seedance-country-mechbox
    - seedance-world-cup-mechbox
    - seedance-zodiac-beast
    - seedance-zodiac-beast-bust
    - seedance-zodiac-beast-crest
    - seedance-zodiac-beast-diorama
    - seedance-zodiac-beast-mask
  - **原因**：用户反馈"主体盒子太套模板了"，需要根据最终目标物去倒推可变形盒体

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
  - 曾新增短版模板，后续已在 2026-05-13 移除

### 2026-05-08
- **Added** - seedance-world-cup-mechbox
  - 新增世界杯主题可变形盒体 skill

### 2026-05-06
- **Added** - seedance-country-mechbox
  - 新增国家主题可变形盒体 skill

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
