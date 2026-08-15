---
name: resume-tailor
description: Tailors a resume to a specific job description — ATS keyword-gap analysis against the JD, bullet-by-bullet impact quantification, a rewritten executive summary, and a skill-gap learning plan (real courses/tools/certificates to close genuine hard-skill gaps, ranked by priority) — then cross-checks your Impact-Log file(s) for strong quantified candidate sentences that match the JD's top keywords but aren't yet reflected in the pasted resume. Use this skill whenever the user pastes or attaches a resume together with a specific job description and asks to tailor, optimize, or adapt the resume for that role, asks for ATS keyword matching, wants resume bullets rewritten with quantified impact, wants an executive summary rewritten, wants to know what skills/tools/certs to learn to be more competitive for that role, or says things like "tailor my resume for this JD," "help me match my resume to this job posting," "polish my CV for [Company]," or "帮我把简历改成适配这个职位" — even if they don't say "ATS," "keyword," or "skill" explicitly. Do not use for general behavioral-interview preparation once an interview is scheduled (see `maang-interview-prep`) or for ongoing weekly work-log capture (see `career-impact-tracker`) — this skill only produces a one-time, JD-specific resume tailoring document.
---

# Resume Tailor

Turn a resume + a specific job description into a concretely tailored resume-editing document — ATS keyword gaps, rewritten bullets with quantified impact, and a rewritten executive summary — plus a pull of extra quantified material the candidate has already banked but hasn't put in the resume yet, and a forward-looking skill-gap learning plan (real courses/tools/certs to actually go build the missing hard skills, not just phrase around them).

## ⚙️ Setup before first use

Edit these two paths to match your own vault/notes structure (if you don't keep an Impact-Log, skip Step 4 in the workflow below — it becomes optional):

- **Impact-Log file(s) to cross-check**: `[e.g. 10-Action/Internship/<Company>/Impact-Log.md — one per job/internship you've worked, or a single running log]`
- **Save location for tailoring docs**: `[e.g. 10-Action/Internship/Resume-Tailor/ — create if it doesn't exist]`

## Why this exists

A recurring finding across career-coaching workshops: 70%+ of student resume bullets don't mention quantified impact, and 90%+ of applicants are cut at the resume screen before any human interview — mostly because bullets aren't tied to the specific JD being applied to. This skill operationalizes a repeatable fix (ATS keyword matching, impact-quantification rewriting, executive-summary rewriting), and links it to whatever quantified candidate sentences you've already been accumulating (e.g. via a `career-impact-tracker`-style skill), so nothing banked gets forgotten when it's time to actually apply.

## Required inputs

Before starting, collect:
1. **Job description** (full text, pasted or attached)
2. **Resume** (full text or pasted content — always ask the user to paste or attach it, never search the vault for one)
3. **Optional**: which specific bullets/sections to focus on, if the user only wants part of the resume touched
4. **Optional**: a strong executive-summary example to use as a style reference — if none is offered, ask once whether they have one; proceed without it if not, rather than blocking

If #1 or #2 is missing, ask for it before starting — don't guess at a JD or fabricate resume content.

**Golden rule to enforce throughout:** never invent a metric, number, or outcome that isn't already in the candidate's resume text or in a matched Impact-Log candidate sentence (Step 4). Where a bullet's real impact is unmeasured, insert a clearly-labeled placeholder like `[metric needed — ask candidate: what was the scale/frequency/outcome?]` rather than fabricating a number. A confident-sounding invented statistic is worse than an honest gap — it can fall apart under a follow-up question later.

## Workflow

Work through these steps in order. Each one produces a labeled section of the final document — write the artifact as you go rather than only describing what it would contain.

### 1. ATS / JD keyword-gap analysis

Identify the top 10 keywords/phrases from the JD that are missing or weak in the resume, and how to incorporate each one naturally (not keyword-stuffed). For each: note whether it's fully absent, present but under-emphasized, or present with different wording than the JD uses.

Optional manual cross-check the user can run themselves (not something this skill executes): an ATS-match-score tool, or a JD word-cloud tool — mention these as a suggestion, don't claim to run them.

Output: a "Top 10 Missing Keywords" table (Keyword | Status | Where to Add | Suggested Phrasing).

### 2. Impact-bullet rewrite pass

For every Experience bullet (or the subset the user flagged in Required Inputs #3), show: original → rewritten (strong action verb + what you did + why/target metric + quantified result). If no real metric exists in the resume text, check Step 4's Impact-Log matches first for a substantiated number before falling back to a `[metric needed]` placeholder — never invent one.

Output: an original → rewritten list/table, one row per touched bullet, with placeholders visibly flagged.

### 3. Executive summary — 3 variants

If a style-reference example was provided, match its tone/structure; generate exactly 3 variants, each within roughly 400–500 characters (~60–80 words), each with quantified metrics only and no filler adjectives/adverbs ("passionate," "hardworking," "results-driven," etc. are banned).

Output: three labeled variants (A/B/C).

### 4. Impact-Log cross-check (optional — skip if you don't keep one)

Read the Impact-Log file(s) configured above — **read-only, never write to them** (that's the accumulation skill's territory, e.g. `career-impact-tracker`). Extract every quantified candidate-sentence bullet across all entries.

Cross-reference each candidate sentence against Step 1's top-10 keyword list and the JD's core requirements. Surface sentences that (a) carry a real quantified metric, (b) map to a JD keyword/requirement that's missing or weak in the resume, and (c) are not already reflected — even loosely/paraphrased — in the pasted resume. Tag each surfaced sentence with its source and date for traceability. If the Impact-Log has nothing relevant to this JD, say so plainly rather than forcing in an unrelated sentence.

Output: a "Suggested Additions from Impact-Log" list (or an explicit "none found" note).

### 5. Skill-gap learning plan

This is forward-looking — not "how do I phrase what I already know" (that's Steps 1–4), but "what don't I actually know yet that this JD wants, and what should I go learn." Pull from two sources: (a) Step 1's keyword gaps that are **genuine skill gaps**, not just documentation/phrasing gaps — e.g. "Python/SQL absent" is a real gap; "cross-functional coordination present but under-emphasized" is not, it's a rewrite problem already handled in Step 2 — and (b) anything the JD lists as required/preferred that has no support anywhere in the resume or Impact-Log. Skip a gap entirely if it's already covered by real experience that's just not phrased right yet; that belongs in Step 2, not here.

For each genuine gap, recommend: the specific hard skill/technique to learn, and — where relevant — a named tool/app to practice with and/or a certificate to pursue. Only name well-established, real programs (e.g. Google Career Certificates, HubSpot Academy, Meta Blueprint, Microsoft Learn, Coursera/edX university courses, official vendor certs like AWS/GCP/Azure fundamentals, Tableau/Power BI, DataCamp) — never invent a course or certificate name. Flag plainly that exact syllabus/cost/availability needs the candidate's own quick check before enrolling — this skill has no live web access to verify current course catalogs.

Rank each recommendation **High/Medium/Low priority** based on how core the gap is to *this specific JD* (a "required" JD line outranks a "nice to have" one) and note a rough time investment (a weekend project vs. a multi-week certificate) so the candidate can actually sequence their study time instead of facing an undifferentiated wishlist. Cross-check against the resume's existing Software/Skills line first — never recommend relearning something already listed there.

Output: a "Skill-Gap Learning Plan" table (Gap | Why it matters for this JD | What to Learn | Suggested Resource/Cert | Priority | Est. Time) — or "No meaningful skill gaps found; the JD's requirements are already covered" if genuinely none exist. Don't pad the table with low-value entries just to have more rows.

### 6. Assemble and confirm

Compile Steps 1–5 into the Output format below. Confirm:
- [ ] Keyword-gap table complete
- [ ] Every touched bullet has either a real metric or a `[metric needed]` placeholder — never a fabricated number
- [ ] 3 executive-summary variants, each within the stated length
- [ ] Impact-Log cross-check run (or explicitly skipped if not configured), results (or "none found") included
- [ ] Every `[metric needed]` placeholder listed as an explicit to-do for the candidate
- [ ] Skill-gap learning plan only lists genuine skill gaps (not rewrite-only issues), each with a real named resource and a priority

## Division of labor with other skills

- **`maang-interview-prep`**: prepares *spoken, behavioral* material (CARL stories, resume-walkthrough scripts, company research) for an interview that's already scheduled. `resume-tailor` prepares the *written document itself* — typically *before* an application goes in. Both take resume + JD as input but produce non-overlapping artifacts.
- **`career-impact-tracker`** (or whatever you use to accumulate quantified wins): runs continuously and independent of any specific job. `resume-tailor` runs once per specific JD and only *reads* the Impact-Log at that point (Step 4) — it never writes to it.

## Output format

The document is deliberately bilingual, split by *purpose* not by section position: anything the candidate could paste straight into a resume/cover letter — keyword tables, rewritten bullets, executive summary variants, surfaced Impact-Log sentences — stays in **English**, since the resume itself is in English. Anything that is a note *to the candidate* rather than resume content — data-quality flags, honest gaps, things still needing a decision or a real number — is written in **Chinese**. If you're adapting this skill for an English-only workflow, just drop the Chinese framing and write Section 6 in English too.

Produce one markdown document using this exact structure:

```markdown
---
title: Resume Tailoring — [Company] [Role]
type: resume-tailor-output
company: [Company]
role: [Role]
created: YYYY-MM-DD
---

# Resume Tailoring: [Company] — [Role]

## ❓ Open Questions
[One line item per open question — every `[metric needed]` flag from §2 gets one here (keep the exact same wording so they're easy to match back), plus which executive-summary variant (A/B/C) to use or "rewrite it." Format:]
- [ ] **Question text**
  → Your answer:

## 1. ATS Keyword Gap Analysis
[Top 10 missing-keyword table: Keyword | Status | Where to Add | Suggested Phrasing]

## 2. Impact-Bullet Rewrites
[Original -> Rewritten pairs, one per touched bullet, placeholders flagged as [metric needed]]

## 3. Executive Summary — 3 Variants
[Variant A / B / C, each within the stated length, no filler adjectives]

## 4. Suggested Additions from Impact-Log
[Candidate sentences not yet in the resume, tagged by source + date — or "No relevant candidate sentences found for this JD" / "Not configured"]

## 5. Skill-Gap Learning Plan
[Gap | Why it matters for this JD | What to Learn | Suggested Resource/Cert | Priority | Est. Time table — only genuine hard-skill gaps, each resource must be a real course/cert, reminder to verify current details before enrolling; if no gaps, say so]

## 6. Notes for the candidate
[Any data-quality issues, every [metric needed] placeholder, honest skill gaps, application-strategy judgment calls the candidate needs to make themselves]
```

Save to the "Save location for tailoring docs" path configured above, named `<Company>-<Role-slug>-YYYY-MM-DD.md`, with the frontmatter above filled in. This gives the candidate a persistent, linkable file to keep updating, rather than only presenting it in chat.

## Output confirmation
When done, briefly report: how many keyword gaps found, how many bullets rewritten (how many flagged `[metric needed]`), whether the 3 executive-summary variants are done, how many Impact-Log sentences surfaced (or none), how many genuine skill gaps in the learning plan (or none), plus a link to the saved file.

## Optional: final document generation (Step 7)

Some users wire this skill up to a script that renders the tailored content into a final formatted resume file (docx/PDF) — following a fixed personal layout (their own name, education entries, page-size rules, etc.) and versioning each render so nothing overwrites a prior attempt. That part is inherently personal (it encodes *your* resume's exact structure) and isn't included here. If you want it:
1. Decide your resume's fixed layout (section order, how many "other experience" entries you show, page size).
2. Write or adapt a rendering script that takes a structured JSON of your resume content and outputs docx/PDF, enforcing that layout and a 1-page limit.
3. Add a "Step 7: Finalize & Generate" section to this file describing when to trigger it (explicitly, never automatically), what content model JSON it expects, and where to save each version (e.g. `Resume-Tailor/CV-Versions/v{N}-{Company}-{Role}/`) with a changelog so past versions are never deleted.
