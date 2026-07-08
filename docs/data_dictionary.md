# Data Dictionary

## Overview

This document defines the variables used in the MLB Player Props Analytics project.

Each variable includes its description, source and business purpose.

---

# Pitcher Variables

| Variable | Description | Source | Business Purpose |
|----------|-------------|--------|------------------|
| pitcher_id | Unique identifier for each pitcher | MLB | Primary Key |
| pitcher_name | Pitcher's full name | MLB | Player identification |
| team | Current team | MLB | Team identification |
| throws | Pitching hand (R/L) | MLB | Matchup analysis |
| opponent_team | Opposing team | MLB | Matchup analysis |
| game_date | Date of the game | MLB | Historical analysis |

---

# Pitching Performance

| Variable | Description | Source | Business Purpose |
|----------|-------------|--------|------------------|
| strikeouts | Strikeouts recorded in the game | MLB | Main performance metric |
| innings_pitched | Innings pitched | MLB | Workload analysis |
| batters_faced | Number of batters faced | MLB | Opportunity analysis |
| pitches_thrown | Total pitches thrown | MLB | Pitch count analysis |
| hits_allowed | Hits allowed | MLB | Pitching efficiency |
| runs_allowed | Runs allowed | MLB | Pitching efficiency |
| walks | Walks allowed | MLB | Command analysis |
| strikeout_percentage | Strikeout percentage (K%) | Statcast / Fangraphs | Pitcher's strikeout ability |

---

# Betting Market

| Variable | Description | Source | Business Purpose |
|----------|-------------|--------|------------------|
| strikeout_line | Sportsbook strikeout line | Sportsbook | Betting analysis |
| outs_line | Sportsbook outs line | Sportsbook | Expected workload |
| over_odds | Odds for Over | Sportsbook | Market analysis |
| under_odds | Odds for Under | Sportsbook | Market analysis |
| implied_probability | Probability implied by the odds | Calculated | Compare against model |
| model_probability | Probability estimated by the model | Franco Analytics | Decision support |
| edge | Model Probability - Implied Probability | Calculated | Value detection |

---

# Opponent Variables

| Variable | Description | Source | Business Purpose |
|----------|-------------|--------|------------------|
| opponent_k_percentage | Opponent strikeout percentage vs pitcher's handedness | Statcast / Fangraphs | Matchup analysis |
| last_3_vs_opponent | Strikeouts in last 3 starts vs opponent | Calculated | Historical matchup |
| over_rate_vs_opponent | Percentage of Overs vs opponent | Calculated | Historical performance |

---

# Derived Variables

These variables are calculated using historical data.

| Variable | Description |
|----------|-------------|
| last_5_over_rate | Percentage of Overs in last 5 games |
| last_10_over_rate | Percentage of Overs in last 10 games |
| average_innings | Average innings pitched |
| average_batters_faced | Average batters faced |
| average_pitches | Average pitches thrown |
| average_difference_vs_line | Average strikeouts minus betting line |
| rolling_k_percentage | Rolling K% |
| rolling_strikeouts | Rolling strikeout average |

---

# Future Variables

These variables will be incorporated in future versions.

- Swinging Strike %
- CSW %
- Whiff %
- Chase %
- Pitch Mix
- Umpire
- Weather
- Ballpark
- Confirmed Lineup
- Pitch Count Projection
