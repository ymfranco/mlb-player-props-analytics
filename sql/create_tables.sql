
-- ===========================================================
-- Franco Analytics
-- MLB Player Props Analytics
--
-- Script: create_tables.sql
--
-- Purpose:
-- Creates the relational database schema for the project.
--
-- Version: 0.1
-- ===========================================================


-- ===========================================================
-- TABLE: teams
--
-- Stores MLB team information.
-- ===========================================================

CREATE TABLE teams (
    team_id INTEGER PRIMARY KEY,
    team_name TEXT NOT NULL,
    league TEXT NOT NULL
);


-- ===========================================================
-- TABLE: pitchers
--
-- Stores static information about MLB pitchers.
-- ===========================================================

CREATE TABLE pitchers (
    pitcher_id INTEGER PRIMARY KEY,
    pitcher_name TEXT NOT NULL,
    throws TEXT NOT NULL,

    team_id INTEGER NOT NULL,

    FOREIGN KEY (team_id)
        REFERENCES teams(team_id)
);


-- ===========================================================
-- TABLE: games
--
-- Stores information for each MLB game.
-- ===========================================================

CREATE TABLE games (
    game_id INTEGER PRIMARY KEY,

    game_date DATE NOT NULL,

    home_team_id INTEGER NOT NULL,

    away_team_id INTEGER NOT NULL,

    stadium TEXT,

    FOREIGN KEY (home_team_id)
        REFERENCES teams(team_id),

    FOREIGN KEY (away_team_id)
        REFERENCES teams(team_id)
);


-- ===========================================================
-- TABLE: pitcher_game_stats
--
-- Stores each pitcher's performance in every game.
-- ===========================================================

CREATE TABLE pitcher_game_stats (

    stat_id INTEGER PRIMARY KEY,

    game_id INTEGER NOT NULL,

    pitcher_id INTEGER NOT NULL,

    strikeouts INTEGER NOT NULL,

    outs_recorded INTEGER NOT NULL,

    batters_faced INTEGER NOT NULL,

    pitches INTEGER NOT NULL,

    hits_allowed INTEGER NOT NULL,

    walks INTEGER NOT NULL,

    runs_allowed INTEGER NOT NULL,
    opponent_team_id INTEGER NOT NULL,

FOREIGN KEY (opponent_team_id)
REFERENCES teams(team_id)

    FOREIGN KEY (game_id)
        REFERENCES games(game_id),

    FOREIGN KEY (pitcher_id)
        REFERENCES pitchers(pitcher_id)
);


-- ===========================================================
-- TABLE: betting_lines
--
-- Stores sportsbook betting lines.
-- ===========================================================

CREATE TABLE betting_lines (

    betting_id INTEGER PRIMARY KEY,

    game_id INTEGER NOT NULL,

    pitcher_id INTEGER NOT NULL,

    strikeout_line REAL NOT NULL,

    outs_line REAL NOT NULL,

    over_odds INTEGER NOT NULL,

    under_odds INTEGER NOT NULL,

    FOREIGN KEY (game_id)
        REFERENCES games(game_id),

    FOREIGN KEY (pitcher_id)
        REFERENCES pitchers(pitcher_id)
);
