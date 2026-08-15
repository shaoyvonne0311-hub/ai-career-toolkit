#!/usr/bin/env bash
# Scripted walkthrough transcript for the README demo GIF.
# All names/numbers below are fabricated examples — no real personal data.

type_out() {
  # Prints text instantly (vhs handles the "typing" animation for real Type commands;
  # this is only used for pre-baked assistant responses so they render at a readable pace).
  local text="$1"
  local delay="${2:-0.012}"
  while IFS= read -r line; do
    echo "$line"
    sleep "$delay"
  done <<< "$text"
}

clear

printf '\033[1;36m~/notes\033[0m $ ls .claude/skills/\n'
sleep 0.4
printf 'career-impact-tracker  maang-interview-prep  networking-outreach  post-interview-followup  resume-tailor\n'
sleep 1.2

printf '\n\033[1;36m~/notes\033[0m $ claude\n'
sleep 0.6
printf '\033[2m> record this week'"'"'s work\033[0m\n\n'
sleep 0.8

type_out "  Running career-impact-tracker...

  ✓ Read this week's meeting notes + daily log entries
  ✓ No quantified result found for one task — flagged instead of guessed

  Appended to Impact-Log.md:

    **Resume candidate sentence:**
    - Redesigned onboarding email sequence for Nimbus Robotics,
      lifting open rate from 18% to 31% across 3 test cohorts

    **CARL story seed:**
    - Context: Onboarding emails had a flat 18% open rate for 2 months
    - Action: Rewrote subject lines, A/B tested send times
    - Result: Open rate rose to 31%; [metric needed — signup lift?]
    - Learning: Subject-line specificity mattered more than send time

  Banked 2 resume-candidate sentences, 1 CARL seed this week."
sleep 1.8

printf '\n\033[2m> tailor my resume for a Marketing Analyst role at Beacon Retail\033[0m\n\n'
sleep 0.8

type_out "  Running resume-tailor...

  Top missing JD keywords: \"SQL\", \"A/B testing\", \"lifecycle marketing\"

  Bullet rewrite (1 of 6):
    Before: \"Helped with email marketing campaigns\"
    After:  \"Redesigned onboarding email sequence, lifting open rate
             from 18% to 31% across 3 test cohorts (A/B tested)\"

  Pulled from Impact-Log: 1 banked sentence not yet in your resume,
  matches the \"lifecycle marketing\" keyword gap

  Skill-gap plan: SQL flagged High priority — not in resume or logs
  → suggested: freeCodeCamp SQL certification (~2 weeks)

  Saved: Resume-Tailor/Beacon-Retail-Marketing-Analyst-2026-08-15.md"
sleep 1.8

printf '\n\033[2m> help me prep for the interview\033[0m\n\n'
sleep 0.8

type_out "  Running maang-interview-prep...

  ✓ JD requirement table — 6 must-prove items identified
  ✓ CARL answer bank — 4 primary stories mapped to 7 behavioral themes
  ✓ Company research brief — Beacon Retail's Q2 expansion, competitors
  ✓ 3 rehearsal-ready questions to ask the interviewer

  Saved: Interview-Prep/Beacon-Retail-Marketing-Analyst-2026-08-15.md
  Rehearsal checklist: 9/9 sections complete, 1 placeholder to fill in"
sleep 2.2

printf '\n\033[1;32m✓ Three skills, one continuous pipeline — nothing re-typed twice.\033[0m\n'
sleep 2.5
