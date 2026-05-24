---
name: seedance-country-mechbox
description: 生成 Seedance 机械盒提示词，从国家推断最终目标对象，包括车辆、设备和机械动物，初始盒子和最终目标上都需要包含该国国旗配色和机械转换的国旗元素。当用户调用 /seedance-country-mechbox、/country-mechbox 或请求将国家反向设计为机械盒变形的目标对象时使用。
---

# Seedance 国家主题机械魔盒

在源仓库中，首先遵循 `../../AGENTS.md`；部署后，如果根文件不存在，请遵循镜像的 `../_shared/AGENTS.md`。本文件只是 skill 入口点和导航指南；它不得重新定义镜头、音频、时间轴、提示词长度或变形行为。

## 范围

将此 skill 用于前置元数据 `description` 中描述的触发面和主题。

## 参考

- `references/generator.md`：完整输出合同、详细映射、目标选择规则、示例和回退行为。
