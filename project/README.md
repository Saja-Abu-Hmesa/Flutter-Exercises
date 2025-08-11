# Football Game Simulator

**Design the Game. Code Your Imagination!**

---

## Project Overview

This project is a console-based football (soccer) game simulator implemented in Dart. It demonstrates Object-Oriented Programming (OOP) concepts by modeling players, trainers, teams, stadiums, and simulating a football match incorporating game theory and strategic decision-making.

The simulator allows user interaction to set team strategies, and integrates dynamic game events, weather effects, and strategic bonuses to simulate a competitive football match.

---

## Features

- **Core Classes:**
  - `Player` with randomly generated power and customizable properties.
  - `Trainer` with experience, power, and selected strategy (Offensive, Defensive, Balanced).
  - `Team` containing players and a trainer.
  - `Stadium` with location, capacity, and teams.
  - `Game` managing match simulation, weather impact, game events, and scoring.

- **Game Theory:**
  - Trainers select strategies influencing team power through a payoff matrix.
  - Strategy interactions dynamically adjust team effectiveness.

- **Random Events:**
  - Match events like goals and cards occur randomly with commentary.
  - Weather impacts team performance.

- **User Input:**
  - Interactive console prompts for strategy selection.
