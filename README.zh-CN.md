# AI 求职工具箱

[English](./README.md) | [简体中文](./README.zh-CN.md)

一套五个可复用、指令驱动的 AI Agent 工作流，自动化求职过程中最重复的部分：积累量化成果、起草人脉拓展消息、针对职位定制简历、生成面试准备包，以及面试后的闭环跟进。

每个工作流都是一份纯文本 markdown 文件（`SKILL.md`）——没有代码，没有依赖。它们按 [Claude Code](https://claude.com/claude-code) 的 "skill" 格式编写，放进去就能通过触发词自动运行、零配置；但内容本身其实就是一份结构化的 prompt：**理论上适配任何能粘贴文字进去的 AI 助手**（ChatGPT、Gemini、Codex CLI 或 Claude 都可以，具体见下方[「在其他 AI 工具里使用」](#在其他-ai-工具里使用)）。

这是我求职时为了解决一个具体问题而做的：**等我真正坐下来写简历 bullet 或行为面试答案的时候，具体的数字早就忘了。** 这几个 skill 把"记录细节"这一步提前到事情发生的当下，等真正需要素材的时候，它已经是量化好、整理好的了。

## 演示

![career-impact-tracker、resume-tailor、maang-interview-prep 依次运行的终端演示，使用虚构的示例公司和职位](./docs/demo.gif)

*这是一段用虚构示例数据（不含任何真实公司/个人信息）录制的脚本化演示，展示了五个 skill 中的三个连续运行：积累一条量化成果 → 针对 JD 改写一条简历 bullet → 生成面试准备包——每一步都复用上一步的产出。*

## 设计思路

大多数 AI 简历/面试工具都是一次性的：贴简历、拿改写结果、结束。这样会丢掉最有价值的输入——关于你实际做了什么的、具体的、真实的、量化的细节——因为没有地方能让它随时间积累下来。这个工具箱刻意做成了**一条流水线，而不是单个工具**，每个阶段的产出都会喂给下一个阶段：

```
career-impact-tracker          →  每周运行，把量化成果
        │                          积累进一份持续更新的 Impact-Log
        ▼
networking-outreach            →  起草冷启动 / 内推请求消息，
   （读取 Impact-Log）             引用真实的证明点，而不是空泛的说法
        │
        ▼
resume-tailor                  →  针对具体 JD 做 ATS 关键词缺口分析
   （读取 Impact-Log）             + bullet 改写，并核对
                                   简历里还没写进去的已积累素材
        │
        ▼
maang-interview-prep           →  基于 CARL 框架的行为面试问答库，
                                   公司调研，简历讲述脚本
        │
        ▼
post-interview-followup        →  核对实际被问到的内容与准备的差异，
   （追加进准备文档）              写一封真实的感谢信，
                                   记录结果
```

每个 skill 都遵循同一条规则：**绝不编造数字、引言或结果。** 遇到真实数据缺失的地方，会插入明确标注的 `[metric needed]` 占位符，而不是编一个听起来合理的数字——一个说得很自信的虚构数据，比一个诚实的空白更糟糕，因为它经不起追问。

## 每个 skill 做什么

| Skill | 触发示例 | 依赖 |
|---|---|---|
| [`career-impact-tracker`](./career-impact-tracker/SKILL.md) | "记录本周的工作" | 无——从这个开始 |
| [`networking-outreach`](./networking-outreach/SKILL.md) | "帮我给 X 写一条 outreach 消息" | 可选：Impact-Log |
| [`resume-tailor`](./resume-tailor/SKILL.md) | "帮我针对这个 JD 定制简历" | 可选：Impact-Log |
| [`maang-interview-prep`](./maang-interview-prep/SKILL.md) | "帮我准备这场面试" | 简历 + JD |
| [`post-interview-followup`](./post-interview-followup/SKILL.md) | "面试刚结束，帮我写一封感谢信" | 同一职位已有的 `maang-interview-prep` 产出 |

`maang-interview-prep` 用的是 **CARL**（Context → Action → Result → Learning）而不是常见的 STAR——Context 把 Situation 和 Task 压缩成一两句话，把更多时间留给"实际做了什么、取得了什么结果"；而 Learning（反思学到了什么）是大多数人最容易跳过的一步，恰恰也是最容易做出差异化的地方。

## 使用步骤（5 分钟）

1. **选一个存放笔记的地方。** 这些 skill 会读写 markdown 文件（Impact-Log、简历定制文档、面试准备包）。任何文件夹都行——Obsidian vault、普通笔记文件夹，或者你已经在 Claude Code 里用的任何目录。

2. **安装 skill。** 把这个仓库里的每个文件夹复制到：
   - `<你的笔记文件夹>/.claude/skills/<skill 名称>/SKILL.md` —— 只在这一个项目/vault 里可用，**或者**
   - `~/.claude/skills/<skill 名称>/SKILL.md` —— 全局可用

3. **填写 `career-impact-tracker/SKILL.md`、`networking-outreach/SKILL.md`、`resume-tailor/SKILL.md` 文件顶部的 `⚙️ 使用前先配置` 区块。** 这是唯一需要的个人化配置——工作/公司名称、笔记存放位置、读取哪些文件。`maang-interview-prep` 和 `post-interview-followup` 不需要配置；每次运行时它们会直接问你要简历和 JD。

4. **从 `career-impact-tracker` 开始用。** 每周跑一次，提前积累量化成果——这是让 `resume-tailor` 和 `maang-interview-prep` 之后产出具体、锐利的内容，而不是泛泛而谈的关键。

## 在其他 AI 工具里使用

上面的 `.claude/skills/` 放入方式是专门给 Claude Code / Claude Desktop 用的——放进去之后，说一句"记录本周的工作"之类的话就会自动触发，不用手动复制粘贴。如果你用的是别的 AI 助手，有两种办法：

- **你的工具本身也有类似的自定义指令 / agent-skills 机制**（现在不少 AI coding 工具都开始支持类似的功能，具体名字可能是"custom instructions"、"project instructions" 或 "skills folder"，去查一下你工具的文档）。如果有，这里的 `SKILL.md` 文件都是纯 markdown，没有任何 Claude 专属语法，可以用同样的方式放进去。
- **你的工具没有这个机制，或者你用的就是普通聊天界面**（ChatGPT、Gemini、Codex CLI 的对话模式等）——这个办法总是有效：打开你想用的那个 skill 的 `SKILL.md` 文件，把全部内容复制下来，作为新对话的第一条消息发出去，然后按照文件里的要求继续贴上你的简历/JD。这些指令是自包含的，没有任何地方假设对方一定是 Claude。

不管用哪种方式，真正有价值的部分——方法论、"绝不编造数字"这条规则、文件格式——都是一样的。唯一的区别只是触发方式是自动的还是手动粘贴一次。

## 说明

- 五个 skill 都会要求你直接粘贴简历/JD，而不是去笔记里搜索文件——不假设你的笔记里存在一份"标准简历文件"。
- `resume-tailor` 提到一个可选的最后步骤，用来把定制好的内容渲染成正式的 docx/PDF——这部分天然带有个人色彩（它编码了你简历的具体排版：字体、章节顺序、分页规则），所以没有包含在这里；skill 文件里说明了如何自己搭建这一步。
- 这些都是纯文本指令文件（`SKILL.md`），不是代码——没有依赖，不需要安装任何东西。在 Claude Code/Desktop 里开箱即用，也可以粘贴进任何其他 AI 助手使用（见上文）。

## 许可证

MIT —— 详见 [LICENSE](./LICENSE)。
