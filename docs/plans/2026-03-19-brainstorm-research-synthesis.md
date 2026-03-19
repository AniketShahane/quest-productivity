# Quest Productivity — Research-Backed Brainstorm

**Date:** 2026-03-19
**Status:** Iteration 5 — Data Model & User Flows

---

## 1. Scientific Foundations

### 1.1 Implementation Intentions → WOOP (Core Mechanic)

**Source:** Gollwitzer & Sheeran (2006) meta-analysis — 94 studies, 8,000+ participants.

- **Effect size: d = 0.65** (medium-to-large) on goal attainment
- Specifying **when, where, and how** ("If situation Y, then I will do behavior X") raises follow-through from ~20-30% to ~60-70%
- Works by: (a) heightening accessibility of the cue situation, (b) automating the goal-directed response via strong associative link
- The intention-behavior gap: strong commitment (d = 0.66) only produces small-to-medium behavior change (d = 0.33) WITHOUT implementation intentions
- Field interventions show slightly smaller effects (d ≈ 0.47) than lab settings — still meaningful

**CRITICAL REFINEMENT (Iteration 2):** Simple implementation intentions have a **null effect on repeated behaviors** like exercise (PMC7872013 — field experiment showed 2.3 vs 2.6 gym visits, statistically insignificant). They work for one-time discrete actions (flu shots, voting) but NOT for recurring tasks.

**The fix: WOOP (Wish, Outcome, Obstacle, Plan)** — Gabriele Oettingen's Mental Contrasting with Implementation Intentions (MCII):
- Combines mental contrasting (imagining desired outcome + identifying inner obstacle) with if-then planning
- MCII is **more effective than either technique alone** (Frontiers meta-analysis)
- Participants using WOOP were **twice as physically active** as control groups
- 30% improvement in dietary habits vs control
- Works for repeated behaviors because it addresses WHY you might fail, not just WHEN you'll act

**The WOOP flow:**
1. **Wish** — What do you want to accomplish? (the task)
2. **Outcome** — What's the best outcome of completing this? (motivation fuel)
3. **Obstacle** — What inner obstacle might prevent you? (e.g., "I'll feel tired after lunch")
4. **Plan** — If [obstacle], then I will [specific action] (the implementation intention, now obstacle-aware)

**Design implication:** Task creation MUST use a WOOP-inspired flow, not just when/where/how. The obstacle identification step is what makes it work for daily recurring tasks. For simple/trivial tasks, the flow can be abbreviated (just when + how). For Hard/Epic/Legendary tasks, full WOOP is required.

**Task creation UX tiers:**
- **Trivial tasks:** Quick add — title + when (minimal friction)
- **Normal tasks:** Title + when + how (standard implementation intention)
- **Hard/Epic/Legendary:** Full WOOP — title + best outcome + inner obstacle + if-then plan + when
- **AI assist:** AI can suggest likely obstacles based on task type and user history

### 1.2 Self-Determination Theory (Motivation Framework)

**Source:** Deci & Ryan; applied to gamification in multiple 2024-2025 studies.

Three basic psychological needs:
1. **Autonomy** — feeling of choice and self-direction
2. **Competence** — feeling of mastery and progress
3. **Relatedness** — feeling of connection

**Design implication:** Every gamification element must be evaluated against these three needs. If a feature undermines any of them, it will backfire.

- Autonomy: User chooses which quests to accept from AI recommendations (not forced)
- Competence: Clear progress indicators, difficulty scaling, skill growth
- Relatedness: Optional social features, party system

### 1.3 Octalysis Framework (Gamification Architecture)

**Source:** Yu-kai Chou's 8 Core Drives, used by Microsoft, LEGO, Salesforce (1.5B+ users).

We should prioritize **White Hat drives** (positive, empowering):
1. **Epic Meaning & Calling** — "I'm building something bigger" (monthly monuments)
2. **Development & Accomplishment** — XP, levels, quest completion
3. **Empowerment of Creativity & Feedback** — generative art rewards, customization
4. **Ownership & Possession** — artifact collection, personal gallery

Use **Black Hat drives** sparingly and ethically:
5. **Scarcity & Impatience** — rare artifact variants (not artificial paywalls)
6. **Loss & Avoidance** — gentle, with recovery mechanics (see 1.6)

### 1.4 Endowed Progress Effect

**Source:** Nunes & Drèze (2006) — car wash loyalty card study.

- Group given 2 "free" stamps on a 10-stamp card (need 8 more) had **34% redemption** vs 19% for group with blank 8-stamp card
- Despite identical effort required, artificial head start nearly doubled completion
- Combines with **Goal Gradient Effect**: effort increases as goal approaches

**Design implication:** Daily quest boards should start partially complete (e.g., "morning routine" auto-checks). Weekly mosaics should show the frame/outline from Day 1 so users see progress toward something tangible.

### 1.5 Variable Ratio Reinforcement

**Source:** Skinner; applied to digital products (Instagram, slot machines).

- Unpredictable reward timing produces **highest response rates** and **strongest resistance to extinction**
- Dopamine system stays engaged due to anticipation

**Design implication:** Rare artifact variants, bonus quests, surprise achievements. NOT the core reward loop (which should be predictable/reliable) but layered on top.

### 1.6 Compassionate Streak Design

**Source:** Smashing Magazine (2026), Klarity Health research on ADHD users, Trophy.so retention studies.

Problems with traditional streaks:
- Broken 100-day streak → user never returns (shame/failure)
- Anxiety-producing for neurodivergent users
- "Trapped by success" phenomenon

Evidence-backed alternatives:
- **Streak freezes** (Duolingo model) — protect investment during misses
- **Ramp-down** not cliff-drop — lose progress gradually, not all at once
- **Cumulative** not consecutive tracking — total days, not unbroken chains
- **Heat map** visualization (like GitHub contributions) — one off day is visible but not devastating
- **Dual system** (streaks + milestones) reduces 30-day churn by **35%**

**Design implication:** Use heat map + weekly mosaics (gaps are visible but not punishing). No "streak broken" messaging. Offer "recovery quests" to partially fill gaps retroactively.

### 1.7 Loss Aversion in Gamification

**Source:** Clinical trial, 602 participants (PubMed 2021).

- Participants 18.4% more likely to meet goals when at risk of losing **earned** (not endowed) progress
- Key distinction: loss aversion works ethically when the user earned the level, not when it was given free

**Design implication:** Health-point style penalties (Habitica) can work but must be for earned progress, optional, and recoverable. Default mode should be reward-focused.

### 1.8 Circadian Rhythm & Energy Management

**Source:** Neuroscience research on cognitive performance cycles.

- Cognitive performance peaks mid-morning, dips post-lunch, secondary peak early evening
- Adults maintain high focus for ~90-120 minutes, then need 15-30 minute recovery
- AI scheduling should match task difficulty to energy level

**Design implication:** AI scheduler should learn personal energy patterns over time and schedule Hard/Epic quests during peak hours, Trivial/Normal during dips.

### 1.9 Anti-Burnout & Recovery Mechanics

**Source:** Maslach Burnout Inventory (MBI), Sonnentag & Fritz (2007) Recovery Experience research.

**Burnout dimensions (MBI):**
1. **Exhaustion** — emotional resources depleted (measured by frequency: "never" to "daily")
2. **Cynicism** — distancing from work as coping mechanism
3. **Reduced efficacy** — feelings of incompetence

**Five burnout profiles** (Leiter & Maslach):
- Engagement (positive on all 3)
- Overextended (exhaustion only)
- Ineffective (low efficacy only)
- Disengaged (cynicism only)
- Burnout (negative on all 3)

**Recovery experiences (Sonnentag & Fritz 2007, n=930):**
1. **Psychological detachment** — mental disengagement from work (most consistently linked to well-being)
2. **Relaxation** — low activation, low effort
3. **Mastery** — learning/challenges outside work domain
4. **Control** — autonomy over leisure time

**Proxy signals the app can track (without invasive monitoring):**
- Completion rate trending down over 2+ weeks
- Increasing quest skips/dismissals
- Capacity utilization at 90%+ for 14+ days
- Declining quest acceptance rate from Oracle recommendations
- Shorter session times (engagement dropping)

**Recovery Arc design:**
1. **Detection:** AI flags when 2+ proxy signals trigger simultaneously
2. **Framing:** "Your quest log shows signs of battle fatigue. Even legendary heroes rest. Starting a Recovery Arc."
3. **Mechanics:**
   - Daily quest load reduced to 50% of learned capacity
   - Only Trivial/Normal quests recommended
   - Special "Recovery quests" added: walks, breaks, non-work mastery activities
   - Recovery artifacts have their own unique aesthetic (calming, nature-themed)
4. **Duration:** 3-7 days, user can exit early
5. **Exit:** "Recovery complete! You've earned the Restoration Artifact." (rare collectible)

**Design implication:** The Recovery Arc serves Sonnentag's 4 recovery experiences — detachment (reduced work quests), relaxation (trivial-only), mastery (non-work challenges), and control (user chooses duration). It's framed as a game mechanic, not a failure state.

---

## 2. Competitive Analysis — What Works, What Doesn't

### Habitica
- **Works:** RPG mechanics, social parties, 30% better retention than standard todo apps
- **Doesn't work:** HP loss can feel punishing, volunteer moderation issues, steep learning curve, UI feels dated

### Forest
- **Works:** Simple mechanic (focus → grow tree), IKEA effect, 4.5M+ focused hours collectively
- **Doesn't work:** Only addresses focus time, not task management; limited long-term depth

### Beeminder
- **Works:** Real money stakes create accountability
- **Doesn't work:** Anxiety-inducing, unsuitable for most users, punitive model

### Motion & Reclaim AI (AI Schedulers)
- **Works:** Auto-timeblocking, priority+deadline optimization, dynamic rescheduling dozens of times/day
- **Doesn't work:** No gamification, no behavioral science integration, expensive ($19-34/mo), no implementation intentions
- **Key insight:** They prove AI scheduling works and users want it. But they're pure productivity tools — no fun factor.

### Key Differentiators for Quest Productivity
1. **WOOP-based task creation** (no competitor does this — scientifically superior to simple planning)
2. **AI scheduling with energy-curve learning** (Motion/Reclaim do scheduling but without gamification)
3. **Layered visual reward system** (daily → weekly → monthly) with generative art
4. **Compassionate design** — no punishment, only recovery mechanics
5. **Evidence-based from the ground up** — not gamification-for-gamification's-sake

---

## 3. Refined Feature Architecture

### Layer 1: Quest System (Core)

| Feature | Research Basis | Priority |
|---------|---------------|----------|
| WOOP-based task creation (wish/outcome/obstacle/plan) | Gollwitzer d=0.65 + Oettingen MCII (2x activity) | P0 |
| Quest difficulty tiers (Trivial/Normal/Hard/Epic/Legendary) | Locke & Latham goal-setting theory | P0 |
| Quest decomposition (Epic→sub-quests) | Chunking, cognitive load theory | P0 |
| Boss Battles (3+ day procrastinated tasks) | Loss aversion on earned progress | P1 |
| Side Quests (spontaneous tasks, bonus credit) | Autonomy (SDT) | P1 |
| Flexible completion (partial/pivoted) | Real-world task complexity | P1 |

### Layer 2: AI Scheduler ("The Oracle")

**Design philosophy:** Reduce decision fatigue (each scheduling decision depletes prefrontal cortex resources) while matching task difficulty to energy level. The AI should feel like a wise quest-giver, not a micromanager.

**How it works:**
1. User adds tasks to backlog with WOOP data
2. Each morning, Oracle proposes a daily quest board (6-8 quests)
3. Quests are time-blocked to calendar gaps, matched to energy curve
4. User can accept, swap, or dismiss any quest (autonomy preserved — SDT)
5. Schedule dynamically adjusts if quests take longer/shorter than estimated
6. Skipped quests get intelligent carryover (not blind re-add)

**Scheduling algorithm inputs:**
- Task priority + deadline + estimated duration
- User's learned energy curve (default: peak 9-11am, dip 1-3pm, secondary peak 4-6pm)
- Calendar events (meetings, appointments)
- Task domain mix (avoid monotony — alternate categories)
- Historical completion patterns (learn what the user actually does vs plans)
- Difficulty pacing (game design: Hard → Easy → Medium → Hard, not Hard → Hard → Hard)

**Capacity model (Locke & Latham):**
- Goal difficulty effect sizes: d = 0.52 to 0.82
- Optimal challenge = ~80% of individual's demonstrated capacity
- Too easy → boredom; too hard → lapsed commitment
- AI learns capacity from 2-week rolling window of actual completions

| Feature | Research Basis | Priority |
|---------|---------------|----------|
| Calendar integration + gap detection | Basic scheduling (Motion/Reclaim proven) | P0 |
| Daily quest recommendation from backlog | Reduces decision fatigue (prefrontal resource depletion) | P0 |
| Energy curve modeling (learn peak hours) | Circadian rhythm: peak mid-morning, dip post-lunch, 90-120min focus cycles | P1 |
| Difficulty balancing (pacing) | Game design pacing + Locke & Latham d=0.52-0.82 | P1 |
| Carryover intelligence (reprioritize skipped) | Adaptive scheduling, avoid guilt-spirals | P1 |
| Capacity learning (~80% of max) | Locke & Latham: "challenging but attainable" is optimal | P1 |
| Anti-burnout detection + Recovery Arc | 2+ weeks at 100% → suggest reduced load | P2 |
| Oracle morning briefing | 30-second overview: today's load, energy plan, boss battles | P1 |

### Layer 3: Reward System

| Feature | Research Basis | Priority |
|---------|---------------|----------|
| Daily artifact (generative art based on quest mix) | Ownership (Octalysis), IKEA effect | P0 |
| Weekly mosaic (7 artifacts compose) | Endowed progress, goal gradient | P0 |
| Monthly monument (4 mosaics compose) | Epic meaning (Octalysis) | P1 |
| Rare variants (perfect day, Boss Battle, Monday) | Variable ratio reinforcement | P1 |
| Heat map visualization (not streak counter) | Compassionate streak design | P0 |
| Recovery quests (partially fill missed days) | Anti-shame, re-engagement | P1 |

### Layer 4: Analytics & Reflection

| Feature | Research Basis | Priority |
|---------|---------------|----------|
| Domain balance radar chart | Self-awareness, SDT competence | P1 |
| Weekly AI recap | Feedback loop, reflection | P1 |
| Implementation intention effectiveness tracking | Meta-learning | P2 |
| Heat map history | Cumulative progress tracking | P1 |

### Layer 5: Social (Future)

| Feature | Research Basis | Priority |
|---------|---------------|----------|
| Party system (shared health bar) | SDT relatedness | P3 |
| Guild challenges | Social accountability | P3 |
| Artifact gallery | Social proof, ownership | P3 |

---

## 4. Generative Art Reward System — Detailed Design

### Why Generative Art (Not Static Badges)

**IKEA Effect research** (Norton, Mochon, Ariely 2012): Users value self-created content **63% more** than pre-made alternatives. By generating art FROM the user's actual behavior, each artifact feels personally meaningful — it's a visual fingerprint of their day.

**Seed-based determinism:** Each artifact is generated from a deterministic seed derived from the day's quest data. The same inputs always produce the same output, so artifacts are reproducible and shareable.

### Input Parameters (What Shapes the Art)

| Parameter | Maps To | Visual Effect |
|-----------|---------|--------------|
| Quest domains completed | Color palette | Health=green, Work=blue, Creative=purple, Social=orange, Admin=gray |
| Difficulty mix | Pattern complexity | More hard quests → more intricate geometry |
| Completion rate (0-100%) | Fill/completeness | 100% → full, rich design; 50% → sparser, more negative space |
| Number of quests completed | Element count | More quests → more visual elements |
| Time distribution | Warmth gradient | Morning-heavy → warm sunrise tones; evening → cool twilight |
| Boss Battle completed | Special element | Adds a distinctive focal accent/glow |

### Artifact Anatomy

Each daily artifact is an **SVG composition** with layers:
1. **Background field** — gradient based on time distribution
2. **Core shape** — generated from superformula/noise, shaped by difficulty mix
3. **Detail elements** — small repeated motifs, one per completed quest
4. **Accent** — special elements for Boss Battles, rare events
5. **Border/frame** — completion rate determines frame completeness

### Rarity System (Variable Ratio Reinforcement)

| Rarity | Trigger | Probability | Visual Distinction |
|--------|---------|-------------|-------------------|
| Common | Any day with quests completed | 100% | Standard palette |
| Uncommon | 80%+ completion rate | ~30% of days | Slightly richer colors, subtle shimmer |
| Rare | Perfect day (100% completion) | ~10% of days | Metallic accents, glow effect |
| Epic | Boss Battle slain on a perfect day | ~3% of days | Holographic/iridescent effect |
| Legendary | Perfect week (7 perfect days) | ~1% of weeks | Animated SVG, particle effects |

### Weekly Mosaic Composition

- 7 daily artifacts arranged in a grid/pattern (e.g., hexagonal, circular, or linear)
- Missing days show as ghosted outlines (endowed progress — you see what COULD be there)
- Complete weeks have a unifying border/frame that ties the 7 together
- The mosaic itself has emergent visual properties from the combination

### Monthly Monument

- 4 weekly mosaics arranged into a larger composition
- Visual metaphor: building/tower/garden that grows with each week
- Complete months have a "capstone" element
- These become the long-term gallery items — the "trophies on the shelf"

### Technical Implementation

**Recommended: Pure SVG generation (server-side)**
- Lightweight (~5-20KB per artifact), infinitely scalable
- Server-side rendering via SVGR or custom Node.js SVG builder
- CSS animations for rare+ artifacts (shimmer, glow, particles)
- Easy export/share as image (SVG → PNG conversion)
- No canvas/WebGL dependency = works everywhere including email digests

**Algorithm sketch:**
```
seed = hash(userId + date + questCompletionData)
rng = seededRandom(seed)
palette = selectPalette(domainMix, rng)
baseShape = superformula(difficultyParams, rng)
elements = generateElements(questCount, rng)
frame = generateFrame(completionRate)
artifact = composeSVG(palette, baseShape, elements, frame)
rarity = calculateRarity(completionRate, bossKilled, dayOfWeek)
applyRarityEffects(artifact, rarity)
```

---

## 5. Proposed Tech Stack

| Layer | Technology | Rationale |
|-------|-----------|-----------|
| Framework | Next.js 15+ (App Router) | Largest ecosystem, SSR/SSG, API routes, AI integration, hiring market |
| UI | Tailwind CSS + shadcn/ui | Rapid prototyping, consistent design system |
| Database | PostgreSQL + Drizzle ORM | Relational data (quests, users, artifacts), type-safe |
| Auth | NextAuth.js / Auth.js | Standard, supports OAuth providers |
| AI | Claude API (Anthropic) | Quest recommendations, scheduling, weekly recaps |
| Art Generation | SVG + p5.js | Lightweight daily artifacts, richer monthly monuments |
| Calendar | Google Calendar API | Most common calendar, OAuth integration |
| Deployment | Vercel | Native Next.js support, edge functions |
| Testing | Vitest + Playwright | Unit + E2E, fast |

---

## 6. Data Model (Core Entities)

```
┌─────────────┐     ┌──────────────┐     ┌───────────────┐
│    User      │     │    Quest      │     │   QuestLog    │
├─────────────┤     ├──────────────┤     ├───────────────┤
│ id           │────<│ id            │────<│ id             │
│ email        │     │ userId        │     │ questId        │
│ name         │     │ title         │     │ date           │
│ xp           │     │ description   │     │ status         │ (scheduled/active/completed/partial/skipped)
│ level        │     │ domain        │     │ scheduledStart │
│ energyCurve  │     │ difficulty    │     │ scheduledEnd   │
│ capacity     │     │ estimatedMins │     │ completedAt    │
│ createdAt    │     │ deadline      │     │ completionPct  │ (0-100, supports partial)
│ settings     │     │ recurring     │     │ xpEarned       │
└─────────────┘     │ parentQuestId │     │ notes          │
                    │ status        │     └───────────────┘
                    │ createdAt     │
                    └──────────────┘
                           │
                    ┌──────────────┐     ┌───────────────┐
                    │  QuestWOOP   │     │   Artifact    │
                    ├──────────────┤     ├───────────────┤
                    │ id            │     │ id             │
                    │ questId       │     │ userId         │
                    │ wish          │     │ date           │
                    │ outcome       │     │ svgData        │
                    │ obstacle      │     │ seed           │
                    │ plan          │     │ rarity         │
                    │ whenTime      │     │ domainMix      │ (JSON)
                    │ wherePlace    │     │ completionRate │
                    │ howMethod     │     │ difficultyMix  │ (JSON)
                    └──────────────┘     │ questCount     │
                                         │ metadata       │ (JSON)
                    ┌──────────────┐     └───────────────┘
                    │   Domain     │
                    ├──────────────┤     ┌───────────────┐
                    │ id            │     │  WeeklyMosaic │
                    │ name          │     ├───────────────┤
                    │ color         │     │ id             │
                    │ icon          │     │ userId         │
                    │ userId        │     │ weekStart      │
                    └──────────────┘     │ artifactIds    │ (JSON array)
                                         │ completeness   │ (0-7)
                                         │ svgData        │
                                         └───────────────┘
```

### Domain Defaults
| Domain | Color | Icon | Example Tasks |
|--------|-------|------|--------------|
| Health | #22c55e (green) | heart | Exercise, meal prep, meditation |
| Work | #3b82f6 (blue) | briefcase | Emails, reports, meetings |
| Creative | #a855f7 (purple) | paintbrush | Writing, music, design |
| Social | #f97316 (orange) | users | Calls, events, catch-ups |
| Admin | #6b7280 (gray) | clipboard | Bills, cleaning, errands |
| Learning | #eab308 (yellow) | book | Reading, courses, practice |

### XP & Level System
- Trivial quest: 10 XP
- Normal quest: 25 XP
- Hard quest: 50 XP
- Epic quest: 100 XP
- Legendary quest: 200 XP
- Boss Battle bonus: +50% XP
- Perfect day bonus: +25% of day's total XP
- Level formula: `level = floor(sqrt(totalXP / 100))` (Level 1=100XP, Level 5=2500XP, Level 10=10000XP)

---

## 7. Core User Flows

### Flow 1: Task Creation (WOOP-Inspired)

```
[Quick Add] ──→ Title + Domain + Difficulty ──→ Done (Trivial tasks)
     │
     ▼ (Normal+ tasks)
[When?] ──→ Date/time picker or "AI schedule for me"
     │
     ▼ (Hard+ tasks)
[WOOP Wizard]
  Step 1: "What's the best outcome?" (free text, 1-2 sentences)
  Step 2: "What might get in the way?" (AI suggests common obstacles)
  Step 3: "If [obstacle], then I will..." (the plan)
     │
     ▼
[Quest Created] ──→ Added to backlog or scheduled
```

### Flow 2: Morning Oracle Briefing

```
[User opens app] ──→ "Good morning! Here's today's quest board"
     │
     ▼
[Quest Board]
  - 6-8 quests, time-blocked to calendar
  - Energy indicators (🔥 peak / 🌿 recovery)
  - Boss Battle highlighted if present
  - Total estimated time + difficulty rating
     │
     ▼
[User actions]
  - ✅ Accept board as-is
  - 🔄 Swap quest times
  - ❌ Dismiss a quest (pushed to tomorrow with carryover logic)
  - ➕ Add a side quest
     │
     ▼
[Day begins] ──→ Notifications at quest start times
```

### Flow 3: Quest Completion

```
[Complete quest] ──→ ✨ XP animation + progress bar
     │
     ▼
[Daily artifact preview updates in real-time]
  - Shows current artifact being "built"
  - Each completion adds a visual element
  - Incomplete = work in progress (motivating via goal gradient)
     │
     ▼
[End of day]
  - Final artifact generated and saved
  - "Day Summary" card: quests completed, XP earned, rarity revealed
  - Artifact added to weekly mosaic (visible gap-filling)
```

### Flow 4: Weekly Review

```
[Sunday evening / Monday morning]
     │
     ▼
[Weekly Mosaic revealed]
  - 7 daily artifacts composed
  - AI-generated recap: "You completed 23/28 quests..."
  - Domain balance radar chart
  - Implementation intention insights: "Tasks before 10am: 82% done. After 3pm: 41%."
  - Boss Battle report
     │
     ▼
[Next week planning]
  - Carry forward unfinished quests
  - AI suggests adjustments to capacity/scheduling
```

---

## 8. Open Questions for User

1. **Solo or multiplayer first?** Research says social features boost retention but add complexity. Recommend solo-first, social Layer 5.
2. **Mobile-first or desktop-first?** PWA can serve both — which is primary use context?
3. **Free/paid model?** Affects tech decisions (auth, storage, rate limits).
4. **Calendar provider priority?** Google Calendar first, then Apple/Outlook?
5. **AI provider preference?** Claude recommended for quality, but affects cost model.
6. **Punishment mechanics?** Research supports gentle loss aversion but Habitica-style HP loss is controversial. Recommend reward-only default with optional "hardcore mode."

---

## Sources

- [Gollwitzer & Sheeran (2006) — Implementation Intentions Meta-Analysis](https://www.researchgate.net/publication/37367696_Implementation_Intentions_and_Goal_Achievement_A_Meta-Analysis_of_Effects_and_Processes)
- [Gollwitzer (1999) — Implementation Intentions: Strong Effects of Simple Plans](https://www.prospectivepsych.org/sites/default/files/pictures/Gollwitzer_Implementation-intentions-1999.pdf)
- [Mental Contrasting with Implementation Intentions Meta-Analysis (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC8149892/)
- [Nunes & Drèze (2006) — Endowed Progress Effect (SSRN)](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=991962)
- [Game On: Can Gamification Enhance Productivity? (PMC 2024)](https://pmc.ncbi.nlm.nih.gov/articles/PMC10905147/)
- [Loss Aversion in Gamification Trial (PubMed 2021)](https://pubmed.ncbi.nlm.nih.gov/34860130/)
- [SDT Perspective for Gamification Design (CHI 2022)](https://webspace.science.uu.nl/~veltk101/publications/art/chi2022-sdtws.pdf)
- [Octalysis Framework — Yu-kai Chou](https://yukaichou.com/gamification-examples/octalysis-gamification-framework/)
- [Designing Streak Systems — Smashing Magazine (2026)](https://www.smashingmagazine.com/2026/02/designing-streak-system-ux-psychology/)
- [Breaking The Chain: Streak Features Fail ADHD Users (Klarity)](https://www.helloklarity.com/post/breaking-the-chain-why-streak-features-fail-adhd-users-and-how-to-design-better-alternatives/)
- [Habitica Gamification Case Study (Trophy.so)](https://trophy.so/blog/habitica-gamification-case-study)
- [Designing Streaks for Long-Term Growth (Trophy.so)](https://trophy.so/blog/designing-streaks-for-long-term-user-growth)
- [Variable Ratio Reinforcement (Explore Psychology)](https://www.explorepsychology.com/variable-ratio-schedule/)
- [Circadian Rhythm & Productivity (HBR)](https://hbr.org/2015/01/the-ideal-work-schedule-as-determined-by-circadian-rhythms)
- [Burnout Detection App (PMC 2022)](https://pmc.ncbi.nlm.nih.gov/articles/PMC9490524/)
- [Autonomy, Relatedness, Competence in UX (NN/g)](https://www.nngroup.com/articles/autonomy-relatedness-competence/)
