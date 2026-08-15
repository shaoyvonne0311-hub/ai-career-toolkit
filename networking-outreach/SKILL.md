---
name: networking-outreach
description: Drafts personalized networking and outreach messages — cold outreach, warm-intro requests, post-event follow-ups, and LinkedIn connection-request notes — using the three networking contexts and the legwork/EQ/add-value principles for cold outreach, and the outreach template structure: specific shared context → high-EQ acknowledgment of their time → specific ask tied to a role + how the candidate's real experience maps → offer + 2-3 proposed time slots. Pulls real, specific proof points from the candidate's actual resume/Impact-Log rather than generic claims. Use whenever the user wants to reach out to someone for a coffee chat, referral, or informational interview, wants a LinkedIn connection-request note drafted, wants to follow up after a career fair or networking event, or wants a cold-outreach message to someone at a target company — even if they don't say "networking" or "outreach" explicitly. Do not use this for pre-interview preparation (see `maang-interview-prep`), post-interview thank-you notes for a specific interview already had (see `post-interview-followup`), or resume tailoring (see `resume-tailor`).
---

# Networking & Outreach Drafter

Turn "I want to reach out to this person" into a specific, sendable message — never a generic template dressed up as personalized.

## ⚙️ Setup before first use

This skill pulls proof points from your resume or an Impact-Log file. Point it at wherever you keep that material — for example a plain resume file, or a running log built by a "weekly impact tracker" style skill. Edit the path below to match your own vault/notes structure:

- **Proof-point source(s)**: `[e.g. 10-Action/Internship/<Company>/Impact-Log.md — one per job/internship, or just your resume file]`
- **Save location for drafts**: `[e.g. 10-Action/Internship/Outreach-Drafts/ — create if it doesn't exist]`

## Why this exists

Referrals convert at a dramatically higher rate than cold applications, but are the single move most job-search workflows have zero automation for. Resume-tailoring and interview-prep both assume an application is already in motion; this skill is for *before* that, when the highest-value move is getting a real human conversation.

## Required inputs

Before starting, collect:
1. **Target contact** — name, role/title, company, and LinkedIn URL if available
2. **Context type** — one of: post-event follow-up, warm intro (via a specific mutual connection), cold outreach, or LinkedIn connection-request note
3. **The ask** — what the candidate actually wants (informational chat, referral, an application-specific conversation, general advice)
4. **Shared context / legwork** — something real the candidate already knows about this person's work: a specific post, article, project, talk, or the actual conversation from the event. Required for cold outreach and event follow-ups specifically — this is the "legwork" principle, not optional flavor text.

**Golden rule to enforce throughout:** never invent a shared history, a conversation that didn't happen, or specific knowledge of the contact's work the candidate hasn't actually confirmed. If the candidate has no real legwork yet, say so plainly and suggest 2–3 concrete ways to get some (read their recent LinkedIn posts, check the company blog, look at what they've published) before drafting — a generic message dressed up as personalized is worse than delaying the draft, because it reads as fake to the one person whose read of it matters.

## Workflow

### 1. Classify the context type
The template differs by type:
- **Event follow-up** — references something specific from the actual conversation you had with them
- **Warm intro** — references the specific mutual connection and why they suggested reaching out
- **Cold outreach** — no prior contact; must lead entirely with legwork on their public work
- **LinkedIn connection-request note** — a much shorter variant (character-capped) of any of the above, meant to get accepted, not to make the full ask yet

### 2. Confirm or gather the legwork
Identify the specific, real detail this message will reference. If the candidate hasn't done this research yet, pause here and suggest concrete research steps rather than drafting blind.

### 3. Pull a real, relevant proof point
Match the ask to one concrete piece of the candidate's actual experience — pull from the resume or the proof-point source(s) configured above, rather than a vague "I'm interested in X." The proof point should map directly to why *this* contact, specifically, would find it relevant.

### 4. Draft using the outreach template structure
Specific reminder of the shared context → high-EQ acknowledgment of their time ("could I have 15–20 min?") → specific ask tied to a role + how the candidate's relevant experience maps → offer (e.g. coffee/call) → 2–3 proposed time slots. For LinkedIn connection notes specifically: cap at ~300 characters (LinkedIn's limit), and produce a separate, fuller message as the follow-up once the connection is accepted — don't try to make the full ask inside the connection note itself.

### 5. Check the three cold-outreach principles explicitly (cold outreach only)
- **Legwork shown** — does the message reference something specific and real about them?
- **EQ/empathy exhibited** — does it explicitly value their time rather than assuming it?
- **Value proactively offered** — does it give something (a relevant observation, an offer to help, a genuine compliment tied to specifics) rather than only asking?

Flag explicitly if the draft is missing any of the three — don't silently ship a two-out-of-three message.

### 6. Produce both a short and full variant
A LinkedIn-connection-length version (~300 chars) and a fuller email/InMail/in-person-follow-up version, so the candidate can pick based on channel.

### 7. Note the follow-up plan
Every draft should end with a one-line plan for if there's no response — when to follow up, and with what (a brief, non-pushy nudge, not a repeat of the original ask).

## Output format

```markdown
---
title: Outreach Draft — [Contact Name / Company]
type: outreach-draft
contact_name: [Name]
contact_company: [Company]
context_type: [event-follow-up / warm-intro / cold-outreach / connection-note]
created: YYYY-MM-DD
---

# Outreach Draft: [Contact Name] — [Company]

## Legwork / shared context used
[What's actually being referenced — must be real]

## The ask
[What the candidate actually wants from this contact]

## Draft — short (LinkedIn connection note, ~300 char cap)
> [...]

## Draft — full (email / InMail / follow-up message)
> [...]

## Principle check (cold outreach only)
- Legwork shown: [yes/no + detail]
- EQ/empathy: [yes/no + detail]
- Value offered: [yes/no + detail]

## Follow-up plan
[When and how to follow up if there's no response]
```

Save to the "Save location for drafts" path configured above, named `<Contact-or-Company>-<slug>-YYYY-MM-DD.md`, with the frontmatter above filled in.
