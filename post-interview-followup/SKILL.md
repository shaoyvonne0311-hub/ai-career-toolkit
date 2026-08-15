---
name: post-interview-followup
description: Captures how an actual interview went and closes the loop that `maang-interview-prep` opens — reconciles the pre-interview must-prove list and CARL bank against what was really asked, drafts a personalized thank-you note from real conversation highlights (never generic filler), fills in any `[detail needed]`/`[metric needed]` placeholders that got answered live under interviewer follow-up, and logs the outcome (interviewed / awaiting response / offer / rejected / next round) back into the existing Interview-Prep file. Use whenever the user says an interview just happened, wants a thank-you note drafted, wants to record how an interview went, reports an outcome for a role that has an existing Interview-Prep document, or asks something like "the interview was today, can you help me write a thank-you note" or "I just got rejected/offered for X, update the file." Requires an existing `maang-interview-prep` output for the same company/role — if none exists, point the user to run that skill first rather than reconstructing prep context from memory. Do not use this for pre-interview preparation (see `maang-interview-prep`) or for weekly internship work-log capture (see `career-impact-tracker`).
---

# Post-Interview Follow-Up

Turn what actually happened in an interview into a real thank-you note, an honest reconciliation of prep-vs-reality, and a durable lesson for the next one — instead of letting the prep document go stale the moment the interview ends.

## Why this exists

`maang-interview-prep` produces a rehearsal-ready package, but the loop is incomplete without this: candidates walk out of an interview with real information (what actually got asked, what landed, what didn't) and nowhere structured to put it. The Workshop 5 thank-you-note prompt explicitly requires "2–3 specific highlights from the actual conversation" that the AI cannot supply on its own — so this skill exists specifically to capture that real material and use it, rather than drafting another generic template.

## Required inputs

Before starting, collect:
1. **Which application** — company + role, used to locate the existing file at `10-Action/Internship/Interview-Prep/<Company>-<Role-slug>-<date>.md`
2. **What actually happened** — at minimum: which questions were asked, roughly how the candidate answered, anything asked that wasn't prepped for, and 2–3 specific, memorable moments or topics from the actual conversation. This is required, not optional — it's the only source material for the thank-you note.
3. **Interviewer name(s)**, if learned during the interview and not already in the existing doc's Section 8
4. **Current status**: interviewed / awaiting response / offer / rejected / next round scheduled

If the corresponding Interview-Prep doc doesn't exist, stop and tell the candidate to run `maang-interview-prep` first for this company/role — don't reconstruct or guess at what the prep would have contained.

**Golden rule to enforce throughout:** never invent what was discussed. Every "highlight" used in the thank-you note or the reflection must come from what the candidate actually reports. If they only remember a vague topic, use a clearly-labeled placeholder rather than dramatizing generic material into something that sounds specific but isn't.

## Workflow

### 1. Locate and read the existing prep doc
Read the full file — Section 1 (must-prove list), Section 5 (CARL bank), and any unresolved `[detail needed]`/`[metric needed]` placeholders from Sections 3, 5, and 7. These are what Step 2 gets checked against.

### 2. Capture the actual interview
If the candidate hasn't already given this, ask them to walk through: which questions came up, which of the prepped scripts/CARL stories they actually used (and how they landed), anything asked that wasn't anticipated at all, and 2–3 specific things the interviewer said or asked about that were memorable enough to reference by name in a thank-you note. Write this down as raw notes before drafting anything.

### 3. Reconcile predictions vs. reality
Build a small table: predicted must-prove requirement or CARL theme → did it come up? → how did it go? Mark clearly where prep paid off, where a story fell flat or got cut short, and where something entirely unprepped came up (this is the most valuable signal — it means a future prep for a similar JD should watch for it).

### 4. Draft the thank-you note
Using the real highlights from Step 2 (never generic "thank you for your time, I really enjoyed learning about the role" filler): specific reference to something discussed → genuine appreciation tied to that specific moment → a brief, natural reinforcement of one relevant qualification if it fits → a forward-looking line. Keep it under ~150 words. Address it to the actual interviewer by name if known; otherwise draft a version for a general "hiring team" recipient. This is a draft for the candidate to review and send themselves — never claim to send it.

### 5. Resolve placeholders where the interview actually answered them
For every `[detail needed]` / `[metric needed]` marker in the original doc, check whether a follow-up question in the real interview forced the candidate to produce that missing detail live (interviewers are good at surfacing exactly these gaps). If so, fill it in with the real answer now recorded. If not, leave it open — don't fabricate a resolution just to clear the list.

### 6. Log the outcome and append the reflection
Append a new `## 10. Post-Interview Reflection & Outcome` section to the *existing* file — don't create a separate document, this should live with the rest of the prep material for that application. Update the file's frontmatter with `status:` and `interviewed_on:` fields.

### 7. Flag durable lessons
If a must-prove requirement got probed hard and the candidate had a weak or missing answer, or a story consistently confused the interviewer, call this out explicitly and concretely as something to fix before the next similar interview — this is what makes the loop actually improve future preps rather than just archive the past.

## Output format

Append this section to the existing Interview-Prep file (update its frontmatter first):

```markdown
## 10. Post-Interview Reflection & Outcome
**Interviewed on:** YYYY-MM-DD | **Status:** [interviewed / awaiting response / offer / rejected / next round scheduled]

### What actually happened
[Raw notes: questions asked, which prepped material got used and how it landed, anything unprepped]

### Prediction vs. reality
| Must-prove requirement / CARL theme | Came up? | How it went |
|---|---|---|

### Resolved placeholders
[List of Section 3/5/7 placeholders now filled with real detail from the live interview — or still open, explicitly]

### Thank-you note draft
> [Drafted note, specific to the real conversation]

### Learnings for next time
[Concrete, specific — what to fix or reinforce before the next interview of this type]
```

Update the file's frontmatter to add:
```yaml
status: [interviewed / awaiting response / offer / rejected / next round scheduled]
interviewed_on: YYYY-MM-DD
```

This `status` field feeds the Career Toolkit hub's Interview-Prep table, so don't skip it.
