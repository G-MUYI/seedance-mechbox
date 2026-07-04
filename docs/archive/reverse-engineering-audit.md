# 倒推式架构审查报告

## 审查日期
2026-05-12

## 审查结果

✅ **所有 10 个 skills 已成功更新为倒推式生成逻辑**

## 更新清单

| Skill | 状态 | 验证 |
|-------|------|------|
| seedance-mechbox | ✅ 已更新 | 包含倒推式流程 |
| seedance-american-truckbox | ✅ 已更新 | 包含倒推式流程 |
| seedance-tiktok-us-mechbox | ✅ 已更新 | 包含倒推式流程 |
| seedance-country-mechbox | ✅ 已更新 | 包含倒推式流程 |
| seedance-world-cup-mechbox | ✅ 已更新 | 包含倒推式流程 |
| seedance-zodiac-beast | ✅ 已更新 | 包含倒推式流程 |
| seedance-zodiac-beast-bust | ✅ 已更新 | 包含倒推式流程 |
| seedance-zodiac-beast-crest | ✅ 已更新 | 包含倒推式流程 |
| seedance-zodiac-beast-diorama | ✅ 已更新 | 包含倒推式流程 |
| seedance-zodiac-beast-mask | ✅ 已更新 | 包含倒推式流程 |

## 核心改进

### 1. 全局规则（AGENTS.md）

新增了"Reverse Engineering Process"核心流程：

```
Step 1: Analyze Target Object Structure
  - Overall form type
  - Key components
  - Movement/deployment logic

Step 2: Reverse-Engineer the Mechanical Box
  - Box shape hints at final form
  - Seam layout corresponds to components
  - Trigger mechanism echoes theme

Step 3: Design Transformation Sequence
  - Based on structural logic, NOT template
  - Form-specific patterns provided

Step 4: Generate Complete Prompt
  - Derived from analysis
```

### 2. 每个 Skill 的 Workflow

所有 skills 的 Workflow 部分都已更新为：

```markdown
**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. Analyze the [target]'s structural features
2. Reverse-engineer the mechanical box
3. Design the transformation sequence
4. Reference the mapping table (for domain-specific details)
5. Generate the complete prompt
6. Validation check: Can reader guess the target from transformation logic alone?
```

### 3. 支持文档

- ✅ `skills/_shared/reverse-engineering-template.md` - 完整方法论
- ✅ `docs/reverse-engineering-examples.md` - 3个详细对比示例
- ✅ `README.md` - 说明倒推式设计理念
- ✅ `docs/changelog.md` - 记录架构改进

## 执行保证

### 运行时流程

根据 `AGENTS.md` 的规则：

```
1. Select the skill from user's command
2. Read AGENTS.md FIRST (包含倒推式流程)
3. Analyze target object (新增步骤)
4. Read skill's references/generator.md (for mappings)
5. Generate prompt (基于分析，不是模板)
```

### 验证标准

每个 skill 都包含验证检查：

> **如果删掉目标物名称，读者能从变形逻辑猜出是什么吗？**
> - ✅ 能猜出 → 成功体现了独特结构
> - ❌ 不能猜出 → 还在套模板，需要重新分析

## 关键差异对比

| 维度 | 旧方式（套模板） | 新方式（倒推式） |
|------|----------------|----------------|
| **第一步** | 查映射表 | 分析目标物结构 |
| **盒子设计** | 通用多面体 | 根据目标物形态定制 |
| **变形逻辑** | 固定6步模板 | 根据结构逻辑设计 |
| **时间轴** | 所有目标物都一样 | 每个目标物独特 |
| **特征体现** | 只有颜色和材质 | 结构、部件、动作都体现 |
| **最终动作** | 通用"锁扣闭合" | 目标物特征动作 |

## 示例对比

### 龙（十二生肖）

**旧方式**：
```
[0s] 触发 [2s] 砸桌 [4s] 底座 [6s] 装甲 [8s] 前端 [10s] 锁定
```
❌ 任何四足动物都一样

**新方式**：
```
[0s] 龙鳞按钮发光
[2s] 脊椎节段波浪式解锁（从尾到头）
[4s] 四爪弹出抓地
[6s] 龙头伸出，龙角升起
[8s] 双翼展开
[10s] 甩尾定型，低吼姿态
```
✅ 体现了龙的独特结构：脊椎、蜿蜒、翼、甩尾

## 后续建议

1. **测试验证**：用实际案例测试每个 skill，确认生成的提示词确实体现了倒推逻辑
2. **用户反馈**：收集用户对新生成方式的反馈
3. **持续优化**：根据实际使用情况，优化形态类型参考表和变形模式库

## 结论

✅ **架构改进已完成**

所有 10 个 skills 现在都遵循倒推式生成逻辑：
- 先分析目标物的结构特征
- 再倒推机械盒子的设计
- 最后定制独特的变形序列

不再是简单的"套模板填空"。
