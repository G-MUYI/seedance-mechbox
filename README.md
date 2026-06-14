# Seedance Skills 项目

这是一个 Claude Code Skills 集合，包含 10 个用于生成 Seedance 2.0 视频提示词的专业 skill。

## 📦 包含的 Skills

### 可变形盒体系列
- **seedance-mechbox** - 通用可变形盒体提示词生成器
- **seedance-american-truckbox** - 美国卡车主题可变形盒体
- **seedance-tiktok-us-mechbox** - TikTok 美国州主题可变形盒体
- **seedance-country-mechbox** - 国家主题可变形盒体
- **seedance-world-cup-mechbox** - 世界杯主题可变形盒体

### 生肖神兽系列
- **seedance-zodiac-beast** - 生肖神兽基础生成器
- **seedance-zodiac-beast-bust** - 生肖神兽半身像
- **seedance-zodiac-beast-crest** - 生肖神兽徽章
- **seedance-zodiac-beast-diorama** - 生肖神兽立体场景
- **seedance-zodiac-beast-mask** - 生肖神兽面具

## 🚀 快速开始

### 部署到本地

```bash
# 部署所有 skills 到当前项目
./deploy.sh local

# 部署到全局（所有项目可用）
./deploy.sh global
```

### 使用方式

在 Claude Code 中通过斜杠命令调用：

```
/seedance-mechbox 龙年主题
/seedance-zodiac-beast 虎
/seedance-world-cup-mechbox 巴西
```

Skill 激活后的运行顺序由 [AGENTS.md](AGENTS.md) 统一控制。若用户没有明确说明参考图模式，skill 必须先询问：

```
是否使用参考图版？有图我会保留 @Image 角色行，并让初始盒材质参考目标图材质；无图我会删除 @Image 行并补最终目标外观和材质特征。
```

部署脚本会把根 `AGENTS.md` 镜像到安装目录的 `_shared/AGENTS.md`，保证安装后的 skill 仍能读取同一套运行规则。

## 📁 项目结构

```
seedance-mechbox/
├── skills/              # skill 源文件
│   ├── _shared/         # 跨 skill 共享的提示词规则和模板
│   └── [skill-name]/    # 各个 skill 目录
│       ├── SKILL.md     # skill 入口文件
│       ├── references/  # 详细生成规则、映射表、示例
│       └── agents/      # UI 元数据（openai.yaml）
├── docs/                # 设计文档、审计报告、优化指南
├── tests/               # 测试用例和验证场景
├── AGENTS.md            # 全局规则（优先级最高）
├── deploy.sh            # 部署脚本
└── README.md            # 本文件
```

## 📖 核心设计原则

### 🔄 倒推式设计（Reverse Engineering）

**本项目的核心理念：不是套模板填空，而是从最终目标物的结构特征倒推可变形盒体的设计。**

#### 传统方式 vs. 倒推式

| 传统方式（套模板） | 倒推式（本项目） |
|------------------|----------------|
| 查映射表 → 填变量 → 套用固定时间轴 | 分析目标物结构 → 设计盒子形态 → 定制变形序列 |
| 所有目标物用同一套时间轴 | 每个目标物有独特的变形逻辑 |
| 只体现颜色和材质差异 | 体现结构、部件、运动逻辑差异 |

#### 生成流程

```
用户输入目标物（如"龙"）
    ↓
1. 结构分析
   - 整体形态：长条形，有脊椎节段
   - 关键部件：龙头、四爪、双翼、长尾
   - 运动逻辑：蜿蜒展开
    ↓
2. 倒推可变形盒体
   - 盒子形状：长条形多面体，脊椎分缝明显
   - 触发机构：龙鳞纹按钮
   - 分缝布局：对应各关键部件
    ↓
3. 设计变形序列
   [0s] 触发 → 龙鳞发光
   [2s] 脊椎节段波浪式解锁（从尾到头）
   [4s] 四爪弹出抓地
   [6s] 龙头伸出，龙角升起
   [8s] 双翼展开
   [10s] 甩尾定型，低吼姿态
    ↓
4. 生成完整提示词
```

详见：
- [倒推式生成模板](skills/_shared/reverse-engineering-template.md)
- [新旧方式对比示例](docs/reverse-engineering-examples.md)

### 📊 Seedance 2.0 最佳实践

根据 `AGENTS.md` 和 `skills/_shared/seedance-prompt-research.md`：

1. **完整合同优先**：默认按各 skill 的 `references/generator.md` 输出详细完整版提示词
2. **参考图材质锁定**：参考图版必须让初始盒体 60-70% 可见外壳继承目标图主材质、颜色比例、纹理、磨损和高光；功能分缝、铰链和传动窗只作为嵌入式结构
3. **权重分配**：参考资产 (22%) > 任务描述 (18%) > 时间轴 (17%) > 风格 (9%)
4. **时间轴格式**：保留各 skill 规定的阶段 / 时间轴，每个节拍一个主动作
5. **终态小动作**：变形完成并完整锁定后，追加一个来自已完成结构的轻微小动作收尾
6. **禁止整体缩放**：完整零件、完整目标物或完整小模型不能先缩小藏入盒体再变大；体量只能来自折叠、套叠、分层收纳、滑轨、铰链和伸缩节的可见展开
7. **硬限制才压缩**：平台给出字符上限时，只做结构保留型压缩，不使用独立短版模板

## 🔧 开发指南

### 添加新 skill

1. 在 `skills/` 下创建新目录：`skills/new-skill-name/`
2. 创建 `SKILL.md`（入口文件，包含 frontmatter）
3. 创建 `references/generator.md`（详细规则）
4. 在 `AGENTS.md` 的 "Skill Inventory" 中注册
5. 运行 `./deploy.sh local` 测试

### 修改现有 skill

1. 编辑对应的 `references/generator.md`
2. 在 `docs/changelog.md` 记录改动
3. 重新部署测试

### 共享规则

跨 skill 的通用规则放在：
- `AGENTS.md` - 全局行为规则（最高优先级）
- `skills/_shared/` - 共享的提示词模板和研究文档

## 📝 文档

- [AGENTS.md](AGENTS.md) - 全局规则和 skill 运行时工作流
- [docs/image-vs-no-image-guide.md](docs/image-vs-no-image-guide.md) - 参考图使用指南
- [docs/changelog.md](docs/changelog.md) - 版本变更记录
- [skills/_shared/seedance-prompt-research.md](skills/_shared/seedance-prompt-research.md) - 提示词研究和最佳实践

## 🧪 测试

测试用例存放在 `tests/` 目录，每个 skill 一个子目录。

## 📄 许可

[根据项目实际情况填写]

## 🤝 贡献

[根据项目实际情况填写]
