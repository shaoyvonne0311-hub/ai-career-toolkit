# AI Career Toolkit

A set of five [Claude Code](https://claude.com/claude-code) "skills" — reusable, instruction-driven agent workflows — that automate the repetitive parts of a job search: tracking quantified wins, drafting networking outreach, tailoring a resume to a JD, building an interview prep package, and closing the loop after each interview.

I built this while job-hunting to solve a specific problem I kept running into: **by the time I sat down to write a resume bullet or a behavioral-interview answer, I'd already forgotten the exact numbers.** These skills push the "capture the detail" step to the moment the work actually happens, so the material is already quantified and organized by the time it's needed.

## Why this design

Most AI resume/interview tools are single-shot: paste a resume, get a rewrite, done. That throws away the highest-value input — specific, real, quantified detail about what you actually did — because there's nowhere for it to accumulate over time. This toolkit is built as a **pipeline instead of a single tool**, so each stage feeds the next:

```
career-impact-tracker          →  runs weekly, banks quantified wins
        │                          into a running Impact-Log
        ▼
networking-outreach            →  drafts cold outreach / referral asks,
   (reads Impact-Log)             pulling real proof points, not generic claims
        │
        ▼
resume-tailor                  →  ATS keyword-gap analysis + bullet rewrites
   (reads Impact-Log)             for a specific JD, cross-checked against
                                   banked material the resume doesn't have yet
        │
        ▼
maang-interview-prep           →  CARL-framework behavioral answer bank,
                                   company research, resume walkthrough scripts
        │
        ▼
post-interview-followup        →  reconciles what was actually asked against
   (extends the prep doc)         the prep, drafts a real thank-you note,
                                   logs the outcome
```

Every skill enforces the same rule: **never invent a metric, quote, or outcome.** Where real data is missing, it inserts an explicit `[metric needed]` placeholder instead of a plausible-sounding guess — a confident fabrication is worse than an honest gap, because it falls apart under a follow-up question.

## What each skill does

| Skill | Trigger example | Depends on |
|---|---|---|
| [`career-impact-tracker`](./career-impact-tracker/SKILL.md) | "record this week's work" | nothing — start here |
| [`networking-outreach`](./networking-outreach/SKILL.md) | "draft an outreach message to X" | optional: Impact-Log |
| [`resume-tailor`](./resume-tailor/SKILL.md) | "tailor my resume for this JD" | optional: Impact-Log |
| [`maang-interview-prep`](./maang-interview-prep/SKILL.md) | "help me prep for this interview" | resume + JD |
| [`post-interview-followup`](./post-interview-followup/SKILL.md) | "the interview was today, write a thank-you note" | an existing `maang-interview-prep` output for the same role |

`maang-interview-prep` uses **CARL** (Context → Action → Result → Learning) rather than plain STAR — Context collapses Situation+Task into one or two sentences, freeing more airtime for what was actually done, and Learning is the reflective step most candidates skip, which makes it the easiest differentiator to add.

## Setup (5 minutes)

1. **Pick a place to keep notes.** These skills read/write markdown files (Impact-Logs, tailoring docs, prep packages). Any folder works — an Obsidian vault, a plain notes folder, whatever you already use with Claude Code.

2. **Install the skills.** For each folder in this repo, copy it into:
   - `<your-notes-folder>/.claude/skills/<skill-name>/SKILL.md` — available in that one project/vault only, **or**
   - `~/.claude/skills/<skill-name>/SKILL.md` — available everywhere

3. **Fill in the `⚙️ Setup before first use` block** at the top of `career-impact-tracker/SKILL.md`, `networking-outreach/SKILL.md`, and `resume-tailor/SKILL.md`. This is the only per-person configuration needed — job/company names, where your notes live, which files to read from. `maang-interview-prep` and `post-interview-followup` need no setup; they just ask for your resume + JD each time you run them.

4. **Start with `career-impact-tracker`.** Run it weekly to build a bank of quantified accomplishments before you need them — this is what makes `resume-tailor` and `maang-interview-prep` produce sharp, specific output later instead of generic filler.

## Notes

- All five skills ask you to paste your resume/JD directly rather than search for a file — there's no assumption of a canonical resume file living in your notes.
- `resume-tailor` mentions an optional final step for rendering a polished docx/PDF from the tailored content — that part is inherently personal (it encodes your exact resume layout: font, section order, page-fit rules) and isn't included here; the skill file explains how to build your own.
- These are plain-text instruction files (`SKILL.md`), not code — no dependencies, nothing to install beyond having Claude Code or Claude Desktop.

## License

MIT — see [LICENSE](./LICENSE).
