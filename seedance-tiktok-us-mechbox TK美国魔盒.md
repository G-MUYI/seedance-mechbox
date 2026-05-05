# Seedance TikTok 美国机械魔盒内容生成器（对应 /tk-mechbox-us 命令）

为面向美国 TikTok 用户的 Seedance 2.0 竖屏短视频生成「机械魔盒掉落 → 严格串行机械展开 → 变成目标物」内容包。本 skill 不是单纯提示词模板，而是同时输出 TikTok 发布所需的英文标题、首屏短句、评论互动、标签和 Seedance 竖屏中文提示词。

核心定位：把 `seedance-mechbox` 的机械质量守恒、真实手持、重阻尼串行动作规则，改造成适合美国 TikTok 的系列化内容。优先服务可追更、可评论点名、可做 Part 2 的题材，如「50 States Mech Box」「Zodiac Mech Box」「Garage Mech Box」「Everyday Object Mech Box」「Top Comment Mech Box」。

## 触发条件

**应触发**：

- 用户输入 `/tk-mechbox-us`、`/tiktok-mechbox-us`、`/us-mechbox`
- 用户要求「做 TikTok / TK 美国用户看的机械魔盒内容」
- 用户要求「给我一个适合美国 TikTok 的 Seedance 机械变形提示词」
- 用户要求「按州 / 星座 / 日常物品 / 车库文化 / 评论区点名」生成机械魔盒视频内容
- 用户要求输出 TikTok 标题、Hook、Caption、Hashtag、评论引导和视频提示词

**不应触发**：

- 只需要普通横屏 Seedance 提示词，且没有 TikTok / 美国用户 / 竖屏发布需求
- 用户明确要求 Sora / Kling / Veo / Runway 等其他视频模型的专属写法
- 静态图像提示词需求
- 真实品牌广告、真实 Logo 复刻、真实车标复刻或商标精确再现需求

## 参数

`/tk-mechbox-us [系列] [目标] [--compact] [--caption-only] [--prompt-only] [--15s]`

- **不传参** → 从推荐系列中随机选一个高传播目标，输出完整 TikTok 内容包。
- **系列参数**：
  - `state` / `states` → 美国州主题机械魔盒
  - `zodiac` → 星座主题机械魔盒
  - `garage` → 美国车库 / 工具 / 改装文化主题
  - `everyday` → 美国日常物品主题
  - `comment` / `top-comment` → 评论区点名主题
  - `car-culture` → 肌肉车、越野、皮卡、drag racer 等美国车文化主题
- **目标参数** → 具体州名、星座、物品或目标物，如 `Texas`、`Scorpio`、`coffee cup`、`toolbox`、`monster truck`。
- **`--compact`** → 输出短版 Seedance 提示词，保留镜头、时间轴、五拍节奏、质量守恒和关键限制。
- **`--caption-only`** → 只输出 TikTok 英文标题、首屏短句、Caption、评论引导和标签，不输出视频提示词。
- **`--prompt-only`** → 只输出 Seedance 竖屏提示词，不输出运营文案。
- **`--15s`** → 将视频从默认 10 秒扩展到 15 秒，增加更清晰的分段展开和 loop 结尾。

## 美国 TikTok 内容原则

1. **竖屏优先**：默认 9:16，10 秒，第一人称真实手持近距离产品拍摄。不要输出 16:9。
2. **前 1 秒必须有动作**：按钮下沉、红光亮起、魔盒坠落或撞桌必须马上发生，不做片头、不做解释、不做 logo 展示。
3. **标题和首屏短句用英文**：面向美国用户，TikTok 发布文案、屏幕叠字和评论引导全部用自然英文。
4. **视频内不生成字幕 UI**：Seedance 画面提示词里仍然禁止字幕、UI 和额外道具。首屏短句是发布时外加的 TikTok overlay，不写进画面生成段。
5. **评论区驱动追更**：每条内容默认带一个明确 CTA，如 `Comment your state for Part 2`、`Top comment becomes the next build`。
6. **小圈层优先**：优先让某个群体觉得「这是给我的」，如 Texas、Scorpio、garage dads、coffee people、gamers、truck fans。
7. **避免真实商标依赖**：可以参考美国文化类型和工业特征，不生成真实品牌 Logo、车标、球队标识、大学校徽或受版权保护角色。
8. **循环感**：结尾 0.8-1.2 秒保持到位后的轻微手持停留，Caption 可引导重看机械展开细节。

## 输出结构

除非用户使用 `--caption-only` 或 `--prompt-only`，固定输出以下结构：

1. **Series**：英文系列名
2. **Target**：目标物和变形结果
3. **TikTok Package**
   - Title：英文标题，建议 45-70 字符
   - First-frame overlay：英文首屏短句，3-7 个词
   - Caption：英文发布文案，建议 80-140 字符
   - Pinned comment：英文置顶评论，引导用户点名下一集
   - Hashtags：6-9 个，混合大词和小圈层词
4. **Seedance Prompt**
   - 9:16 竖屏中文提示词
   - 保留机械魔盒核心规则
   - 不把 TikTok overlay、字幕或 UI 写入画面
5. **Next Variations**
   - 给 3 个下一条视频选题，便于连续发布

### 严格模板输出契约

默认完整输出时，必须按以下 Markdown 骨架输出，不要改名、合并或省略栏目：

- `**Series**: {英文系列名}`
- `**Target**: {目标物和变形结果}`
- `**TikTok Package**`
  - `Title: ...`
  - `First-frame overlay: ...`
  - `Caption: ...`
  - `Pinned comment: ...`
  - `Hashtags: ...`
- `**Seedance Prompt**`
  - 紧跟一个 `text` 代码块，代码块内放完整填充后的 Seedance Prompt。
- `**Next Variations**`
  - 只给 3 条下一集选题。

Seedance Prompt 是主输出，不可被摘要化。除非用户显式使用 `--compact`，否则必须逐段保留「Seedance Prompt 模板」的完整结构、段落顺序、时间轴和机械细节，只替换 `{占位符}` 并把目标相关细节扩写进去。

输出时遵守以下硬要求：

- 不要把 Seedance Prompt 写成「9:16 竖屏中文提示词」这类概述；必须输出完整可复制的最终提示词。
- 不要丢失模板中的八个一级段落：`一、镜头设定`、`二、场景`、`三、人物`、`四、主体`、`五、全局动作语义`、`六、时间轴`、`七、全局机械与物理规则`、`八、关键限制`。
- 不要丢失时间轴中的所有时间块：`[0.0-1.2 秒]`、`[1.2-1.8 秒]`、`[1.8-8.8 秒]`、`[1.8-2.7 秒]`、`[2.7-3.8 秒]`、`[3.8-5.1 秒]`、`[5.1-6.5 秒]`、`[6.5-7.8 秒]`、`[7.8-8.8 秒]`、`[8.8-10.0 秒]`。
- 不要删除固定镜头、场景、手部、质量守恒、源开口、五拍微循环、串行展开、真实重量、关键限制等描述；目标差异只能通过替换占位符和补充目标细节来体现。
- 所有 `{占位符}` 必须替换为具体内容，最终输出里不能残留花括号占位符。
- `--prompt-only` 时只输出完整 Seedance Prompt 代码块，不输出 TikTok Package；`--caption-only` 时不输出 Seedance Prompt；`--compact` 才允许压缩，但仍必须保留镜头、时间轴、五拍节奏、质量守恒和关键限制。

## 系列选择规则

### 1. 50 States Mech Box

适合做美国本土互动。用户最容易评论「Do my state」。

优先映射：

| 州 | 目标物 | 视觉关键词 | 铭牌 |
|---|---|---|---|
| Texas | armored long-bed pickup / oilfield crawler | desert dust、oilfield steel、ranch gate、wide tires | TEXAS/01 |
| California | solar hypercar / surf drone | coastal silver、solar panels、aero fins、Pacific blue light | CALI/01 |
| Florida | swamp rescue buggy | wetland green、fan cage、rescue lights、wide mud tires | FLORIDA/01 |
| New York | yellow urban taxi mech | black-yellow panels、city utility、compact armor、roof light | NY/01 |
| Alaska | snow crawler | ice white armor、tracked wheels、heated vents、arctic lamps | ALASKA/01 |
| Nevada | desert race buggy | sand armor、exposed suspension、neon marker lights | NEVADA/01 |
| Hawaii | island rescue hovercraft | ocean teal、surfboard-like side panels、rescue orange | HAWAII/01 |
| Louisiana | bayou fan boat | swamp fan cage、brass rails、dark green hull | BAYOU/01 |
| Colorado | mountain rescue rover | rock sliders、snow racks、high-clearance suspension | COLO/01 |
| Arizona | canyon off-road rig | red-rock armor、heat vents、wide stance | AZ/01 |
| Michigan | factory muscle coupe | stamped steel、assembly-line marks、deep blue paint | MOTOR/01 |
| Tennessee | stage-light hot rod | chrome grille、warm lights、music-road energy | TN/01 |

若用户指定未列出的州：从州的地理、气候、产业、交通文化或日常符号中提炼目标物。避开现实争议事件、事故灾害、武器伤害和真实高校 / 球队商标。

### 2. Zodiac Mech Box

适合美国 TikTok 的 astrology 兴趣圈层。不要只做豪车，可改为对应机械兽、车库载具或收藏级桌面装置。

输出标题风格：

- `Your zodiac sign as a transforming mech box`
- `Scorpio got the most intimidating build`
- `Comment your sign for Part 2`

星座气质可沿用 `seedance-mechbox`，但发布文案必须更短、更像 TikTok。

### 3. Garage Mech Box

适合美国男性向、DIY、工具、车库、机械爱好者。

推荐目标：

- toolbox → robotic repair arm
- socket set → miniature engine block
- oil can → drag racer engine
- work light → inspection drone
- air compressor → pneumatic mech dog
- cooler → tailgate grill machine

重点：让魔盒初始状态像真实车库工具，不像科幻玩具。展开后仍保持桌面尺寸的收藏模型。

### 4. Everyday Object Mech Box

适合更广泛用户，内容更轻，更容易转发。

推荐目标：

- coffee cup → espresso machine mech
- sneaker box → mechanical sneaker display
- gaming controller → battle drone
- lunch box → tiny food truck
- soda can → vending machine bot
- camera lens cap → folding camera rig

重点：首帧要让人立刻识别日常物品，1.8 秒后再进入机械展开。

### 5. Car Culture Mech Box

适合美国车文化。避免真实品牌商标，使用类型化描述。

推荐目标：

- muscle car
- monster truck
- off-road crawler
- drag racer
- lowrider
- highway semi tractor
- desert trophy truck

重点：美国用户更熟悉 muscle、pickup、monster truck、off-road、drag strip，不要只依赖欧洲超跑。

### 6. Top Comment Mech Box

适合长期运营。把上一条置顶评论或高赞评论作为下一条目标。

输出时必须写：

- `Built from the top comment: "{目标}"`
- `Top comment decides the next one.`
- 给出 3 个候选回复模板，用于评论区互动。

## Seedance 提示词硬规则

从 `seedance-mechbox` 继承以下规则，不可省略：

1. 9:16，10 秒，单镜头，第一人称真实手持拍摄。
2. 基础视角为轻微俯视的 3/4 侧前视角，主体朝镜头偏左约 35°。
3. 镜头距离主体约 45-60 厘米，主体占画面高度 45%-60%，宽度 50%-65%，四周保留桌面留白。
4. 0-1.8 秒只显示由目标物反推得到的封闭初始机械实体，不提前露出目标物完整形态。
5. 1.8-8.8 秒严格串行机械展开，任意时刻只允许一个部件组动作。
6. 每组部件遵循五拍微循环：启动轻抖 → 缓慢推进到约 60% → 短暂停滞 → 回退约 5% → 再次推进 → 最终到位。
7. 所有新零件必须从现有外壳、源开口、滑轨、铰链、套筒和缝隙中展开，有可视来源。
8. 结尾保持同一段连续手持观察，不切到新的展示画面。
9. 关键限制只保留少量必要负向：不切镜、不重置机位、不凭空出现、不悬浮拼装、不魔法变形、不出现字幕 UI 额外道具背景音乐。

## Seedance Prompt 模板

生成时替换所有 `{占位符}`。

下面的 `text` 代码块是最终提示词的唯一母版。生成时必须把整段模板作为骨架输出，不能只引用、节选、重写成短版或用项目符号概括。固定描述负责保持镜头语言、物理规则和机械动作质感；占位符负责承载目标差异。填充占位符时要写成具体可拍的描述，例如不要只写「车辆轮廓」，而要写「低矮长向楔形装甲壳，前端压缩出格栅凹窗和保险杠套筒」。

模板填充检查：

- `Series Name`、`Target Name`、`主灯色`、`主铭牌`、`朝向锚点铭文` 必须和 TikTok Package 的系列与目标一致。
- `初始轮廓`、`分缝布局`、`触发机构与外壳细节`、`前端机芯窗结构`、`材质与涂装` 必须从目标物反推，不能沿用上一条内容。
- `目标关键部件`、`承重结构`、`核心骨架或主体中段`、`两侧关键部件`、`前端关键部件`、`灯光与识别细节` 必须覆盖最终目标物的主要可识别部分，避免最终只变成普通机械盒。
- 如果目标来自真实州、星座、车库、日常物或车文化，只提炼类型化视觉特征，不写真实商标、球队、大学、名人或受保护角色。
- 输出前自检一次：没有 `{}`、没有 `略写`、没有 `同上`、没有 `按模板`、没有「此处省略」。

```text
TikTok US 竖屏机械魔盒系列｜{Series Name}｜{Target Name}

10秒，9:16，单镜头，第一人称真实手持拍摄。画面本身不出现字幕、UI、贴纸或 TikTok 界面元素。

一、镜头设定

全程是一段连续的第一人称真实手持拍摄，基础视角为轻微俯视感的 3/4 侧前视角，主体始终朝镜头偏左约 35°。摄影者站在桌前双手手持设备观察物体，画面持续带有轻微呼吸起伏、腕部细小抖动、站姿重心变化和小幅视线修正。镜头允许低速度、小幅度的观察式微运镜：轻微前后位移、轻微左右漂移、轻微俯仰修正、轻微弧线观察。镜头距离主体约 45-60 厘米，主体在画面中的高度约占画面高度 45%-60%，宽度约占画面宽度 50%-65%，顶部和左右边缘保留自然桌面留白。最后 1.2 秒维持同一段连续手持观察，只做极轻微视线修正与呼吸式停留。

二、场景

略带细小划痕、少量指纹和灰尘点的哑光白色或浅灰色桌面，柔和顶部漫射光从固定方向落下，背景干净，视觉关系简洁，轻微景深。接触阴影、金属高光和桌面反射方向全程一致，像真实近距离产品拍摄。

三、人物

成人双手入镜，手部皮肤质感真实，体积感自然，指纹、指甲边缘、关节褶皱和皮肤压痕可信，动作微小但准确。松手时手指自然离开画面，不遮挡 {朝向锚点铭文}、触发机构和主要源开口。

四、主体

一个掌心大小、可被成人双手托住并触发的封闭初始机械实体，整体尺度、轮廓硬度、材质密度、边缘语言和触发方式都必须从 {Target Name} 反推，而不是套用固定盒子。先判断最终目标物的主轴方向、承重点、展开方向、最大体块、最小识别部件、灯光位置和用户第一眼应识别到的物品气质，再把这些信息压缩成一个封闭待展开的桌面实体装置。它可以是硬边装甲盒、圆角工具壳、扁平机芯盘、折面胶囊、厚重仪器块、低趴节肢壳、杯状机械容器或其他由目标物逻辑决定的形态，但必须有真实接触、重量、源开口和可追溯展开结构。

魔盒主轮廓采用 {从目标物反推的初始轮廓}：例如车辆类通常压缩成长向楔形盒、宽体装甲箱或低矮多面体；飞行器类通常压缩成扁平箭头折面盒；船只类通常压缩成长条船坞棱柱；机械兽类通常压缩成低趴节肢装甲盒；工具 / 日常物品类通常保留其原始物品的可识别比例，但全部改造成硬边装甲结构。主分缝采用 {从目标关键部件反推的分缝布局}，沿未来会展开出 {目标关键部件} 的位置布置，源开口、铰链槽、套筒口、滑轨和承重点必须预示后续展开路径。

触发机构、锁止结构、边角防护、螺栓 / 卡扣 / 铆钉 / 缝线 / 状态灯的形态也根据目标物反推：{从目标物反推的触发机构与外壳细节}。触发机构不固定为按钮，可根据目标物选择按键、拨杆、拉环、旋钮、滑块、钥匙孔、保险拨片、压扣、翻盖锁、表冠、扳机式开关、磁吸插销或其他可被手指清晰操作的实体机构。如果目标物强调速度，可采用低矮滑块、椭圆触发键或切线式锁环；如果目标物强调重载或工具感，可采用厚重拨杆、八角锁止环、粗螺栓和防撞角块；如果目标物强调精密仪器，可采用表盘式旋钮、细密刻度、表冠和小型状态灯；如果目标物来自日常物品，可把杯盖、鞋盒扣、游戏手柄按键、工具箱锁扣等原始交互结构机械化。所有外壳细节的数量与分布服务于 {Target Name} 的机械逻辑，颜色与 {主灯色} 一致。

正前端面也从最终目标物反推，而不是固定成同一种机芯窗。初始实体必须有一个清楚的朝向锚点，铭文使用 {朝向锚点铭文}，可根据目标生成 `FRONT / 01`、`TEXAS / 01`、`GARAGE / 01`、`BREW / 01`、`TOP COMMENT / 01` 等替代工业铭牌。前端结构采用 {从目标物前端或主识别面反推的机芯窗结构}：车辆类可用格栅式凹窗、灯腔源开口和保险杠套筒；飞行器类可用进气道凹窗、机鼻套筒和两侧翼根铰链槽；船只类可用船首龙骨凹窗和舷板折线源口；机械兽类可用双透镜感应窗、颚部或头甲源开口；工具 / 日常物品类可用对应物品最具识别性的正面结构改造成镂空机械凹窗。凹窗内部可见的齿轮组、X 形连杆、曲柄、套筒、轴承环、液压柱等机构，必须与后续 {目标关键部件} 的推出方向一致。后端仅作为远端结构面，可使用 {后端低权重铭文}、散热栅格与少量结构细节，信息权重低。

表面处理为 {从目标物材质与美国 TikTok 系列气质反推的材质与涂装}：装甲面板、骨架边缘、机芯框、铰链、螺栓头和灯带都要服务于 {Target Name} 的来源逻辑。例如州主题可提炼地理、气候、产业和车辆文化；车库主题可提炼工具钢、油污、橡胶、喷涂磨损；日常物品主题可保留原物品的颜色比例但改成机械产品涂装；车文化主题可提炼肌肉车、越野、drag strip、皮卡或重卡的材质语言。工业识别元素必须是机械产品涂装、刻蚀铭牌、细窄灯带或装甲浮雕，不是贴纸式装饰。主铭牌文字使用 "{主铭牌}"，且必须由目标物或系列名生成。

【反剧透要求】在 0-1.8 秒阶段，盒体保持纯硬边工业机械盒外观，{Target Name} 的完整可识别形态只能以内部结构数量、分缝节奏、铰链分布、前端源开口位置和承重支点布局存在，不以完整轮廓提前呈现。

五、全局动作语义

整条视频的机械动作气质统一表现为：高延迟、重阻尼、强摩擦、阶段性停滞、轻微错齿、传动迟滞、沉重反馈、逐级到位、最终扣合。任何部件启动时，先出现轻微抖动与受力迟疑，再进入推进过程。所有部件动作统一遵循五拍微循环：启动轻抖 → 缓慢推进到约 60% → 短暂停滞 → 回退约 5% → 再次推进 → 最终到位。每个部件组完成后都有明确金属反馈与扣合反馈，然后下一个部件组才开始。

六、时间轴

[0.0-1.2 秒]
成人双手托住初始机械实体，右手食指或拇指操作 {从目标物反推的触发机构}：按下、拨动、拉起、旋转、滑开或扣开，触发件发生清楚的实体位移，并亮起微弱 {主灯色} 状态光或发出短促机械反馈。触发后双手立刻向两侧松开，初始实体受重力垂直下坠，镜头视线轻微向下跟随，幅度很小。

[1.2-1.8 秒]
魔盒砸到桌面，底面边角先接触桌面，发生真实碰撞，轻微弹跳一次后稳定停住，接触阴影压实，桌面反光发生短促变化。撞击瞬间镜头出现一次很轻的反应性震动，随后恢复到连续手持观察状态。

[1.8-8.8 秒]
进入严格串行的机械展开，任意时刻只允许一个部件组动作，前一个部件组完全到位后下一个部件组才开始。所有新出现的零件必须从魔盒已有外壳的具体位置展开而来：外壳板件沿铰链翻开、侧缘开口沿滑轨被液压顶出、已有零件末端的伸缩节套筒抽出。每个源开口、凹槽、缝隙在画面中可见保留为镂空痕迹。

[1.8-2.7 秒] 顶盖主齿轮分级转动，带动外壳沿 {主要分缝} 裂开，裂开方式体现 {系列气质}。

[2.7-3.8 秒] 底部开口沿滑轨顶出 {承重结构}，动作带有明显延迟与阻尼，接触桌面后产生压实阴影。

[3.8-5.1 秒] 中段装甲板分段翻开，形成 {核心骨架或主体中段}，翻开过程带阶段性停顿与逐段到位感。

[5.1-6.5 秒] 两侧侧板沿铰链翻折或套筒抽出，形成 {两侧关键部件}，锁定时有清楚扣合反馈。

[6.5-7.8 秒] 前端刻有 "{主铭牌}" 的端面向上翻开，内部多段式伸缩机构向前抽出，形成 {前端关键部件}，推进过程多段、迟滞、受阻、逐步伸出。

[7.8-8.8 秒] 细节组件从凹槽中分两段升起并点亮，包括 {灯光与识别细节}，灯光只作为状态点、透镜内光或细灯带，不形成大面积发光面。

[8.8-10.0 秒]
各处锁扣依次闭合，结构完全到位。镜头继续保持原有的轻微俯视 3/4 侧前观察关系，在同一连续手持状态下做极轻微呼吸式停留和细小视线修正。完整 {Target Name} 清楚可见，主体整体占画面约 55%-65%，四周保留可见桌面留白。最终完成感来自机械展开后的姿态、灯光和结构到位，而不是更换镜头。

七、全局机械与物理规则

所有零件都从现有外壳、开口、滑轨、套筒和缝隙中机械推出。所有部件彼此刚性连接，通过铰链、齿条、滑轨、套筒、机械臂与相邻部件物理相连，传力路径清楚，结构连续。持续表现真实重量感、摩擦感、阻尼感、碰撞反馈和到位反馈。所有承重点都有接触阴影、轻微压实感和可见支撑结构；所有透明件保留厚度、折射和内侧反光。音频仅保留真实机械声与碰撞声：按键咔哒、金属撞击、齿轮啮合、扣件闭合、液压泄压。

八、关键限制

不切镜，不重置机位，不跳到新的展示画面。
零件不凭空出现，不悬浮拼装，不散落。
整体必须是机械展开，不呈现魔法变形感，不呈现连续顺滑同步动作。
画面中不出现字幕、UI、额外道具、背景音乐。
```

## TikTok 文案模板

根据目标生成自然英文，不要机械直译中文。

### 标题模板

- `{Target} as a transforming mech box`
- `I turned {Target} into a mechanical box`
- `{State} got a wild mech box build`
- `Your {zodiac sign/state/object} as a mech box`
- `Built from the top comment: {Target}`

### 首屏短句模板

控制在 3-7 个英文词，适合 TikTok overlay：

- `Wait for the lock-in`
- `This one gets heavy`
- `{Target} deserved this build`
- `Top comment built this`
- `Which state is next?`
- `Your sign is next`

### Caption 模板

- `Built a {Target} mech box for the US series. Comment what should drop next.`
- `{Target} starts as a tiny box, then every part has to unfold from a real source opening.`
- `No magic transform, just slow mechanical lock-ins. Top comment becomes the next build.`

### Pinned Comment 模板

- `What state should I build next?`
- `Drop your zodiac sign and I’ll pick one for Part 2.`
- `Top comment becomes the next mech box. Make it weird.`
- `Should the next one be a garage tool, a state, or a vehicle?`

### Hashtag 规则

固定组合：2 个大词 + 2 个 AI/视频词 + 2 个机械小圈层词 + 1-3 个目标相关词。

示例：

`#TikTokMadeMeWatch #Satisfying #AIVideo #Seedance #MechBox #MechanicalDesign #Texas #OffRoad #Miniature`

避免过多泛标签。不要使用真实球队、大学、名人或品牌标签，除非用户明确需要并已确认合规风险。

## 生成流程

1. 解析输入，判断系列和目标。
2. 如果目标不清晰，优先选择适合美国 TikTok 的高识别目标，不追求复杂设定。
3. 内部完成一组反推结果：`最终目标物 → 主轴方向 → 承重点 → 最大体块 → 最小识别部件 → 展开方向 → 关键部件来源 → 初始实体轮廓 → 触发机构 → 分缝布局 → 前端机芯窗 → 朝向锚点铭文 → 材质涂装 → 主灯色 → 主铭牌 → 时间轴各阶段展开部件`。
4. 生成 TikTok Package，英文要短、自然、可评论，且与目标的圈层身份一致。
5. 将反推结果逐项填入「Seedance Prompt 模板」。默认必须输出完整填充后的模板，不允许删段、合并段落、改成摘要或只输出局部主体段。
6. 填充主体段时，禁止直接套用固定的硬边盒、装甲瓣片、启动按钮、机芯窗、角块和材质描述；固定保留的只有桌面近景尺度、可手持触发、落桌接触、质量守恒、朝向可读、串行展开、五拍微循环和关键限制。
7. 输出前做完整性自检：栏目顺序正确；Seedance Prompt 在 `text` 代码块内；八个一级段落和所有时间块都存在；没有 `{占位符}`、`同上`、`省略`、`按模板` 等未完成文本；没有把 TikTok overlay 写入画面生成段。
8. 给出 3 个 Next Variations，用于持续发布。

## 示例调用

`/tk-mechbox-us state Texas`

输出应包含：

- Series: `50 States Mech Box`
- Target: `Texas armored oilfield pickup crawler`
- Title: `Texas as a transforming mech box`
- Overlay: `Texas deserved this build`
- Pinned comment: `What state should I build next?`
- Prompt: 9:16 Seedance 机械展开提示词，目标为 Texas 风格装甲长货斗皮卡 / 油田越野 crawler，不出现真实品牌、真实徽章或受保护标识。

`/tk-mechbox-us everyday coffee cup`

输出应包含：

- Series: `Everyday Object Mech Box`
- Target: `coffee cup to espresso machine mech`
- 标题和评论引导面向 coffee people
- Prompt 中 0-1.8 秒只像一个由咖啡杯反推的封闭机械杯状实体，不提前出现完整咖啡机。

`/tk-mechbox-us top-comment mechanical alligator`

输出应包含：

- Series: `Top Comment Mech Box`
- Target: `mechanical alligator`
- 文案包含 `Built from the top comment`
- Prompt 避免真实动物血腥、攻击人类或恐怖表达，保持桌面机械收藏模型。

## 常见失败修复

- **不够 TikTok**：首屏没有动作，标题太长，Caption 像说明书。改为 1 秒内按钮/坠落/撞桌，英文文案更短，评论 CTA 更明确。
- **像横屏广告**：检查是否写了 16:9、品牌展示、logo、干净商业棚拍。改为 9:16、桌面近距离、手持观察、无品牌 Logo。
- **美国用户不关心**：目标太抽象。换成州、星座、车库工具、咖啡、游戏手柄、皮卡、怪兽卡车、越野车等更本土的题材。
- **评论少**：没有让用户点名下一集。补 `Top comment becomes the next build` 或 `Comment your state/sign for Part 2`。
- **视频里出现字幕**：删除 Seedance Prompt 中所有字幕、UI、overlay 描述，只在 TikTok Package 里写 overlay 文案。
- **变形太魔法**：补质量守恒、源开口、铰链、套筒、滑轨、五拍微循环。
- **动作太顺滑**：删除 smooth、fluid、fast、sleek 等词，改为高延迟、重阻尼、强摩擦、阶段性停滞、轻微错齿。
- **真实品牌风险**：把真实品牌名改成类型化描述和替代铭牌，如 `MOTOR/01`、`GARAGE/01`、`TEXAS/01`。
