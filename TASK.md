# Development Tasks

> **Current milestone:**
> **Current focus:**
> **Prototype target:** One playable vertical slice

---

## 1. Task tracker

### Work queue
* [ ] Player projectiles
* [ ] Player health and damage
* [ ] Base enemy health and damage
* [ ] Base enemy behavior

### Currently working on


### Blockers / do later


### Finished

* [x] Base enemy sprite
* [x] Basic player movement

---

# 2. Core Gameplay

## Player

* [ ] Movement
* [ ] Aim
* [ ] Shooting
* [ ] Health
* [ ] Damage / disabled functions
* [ ] Dash / dodge
* [ ] Death / restart

## Combat

* [ ] Basic projectile
* [ ] Enemy damage
* [ ] Collision
* [ ] Hit feedback
* [ ] Enemy attack telegraphs
* [ ] Enemy attack patterns
* [ ] Player/enemy interactions

## Weapons

* [ ] Base weapon system
* [ ] Pistol
* [ ] Shotgun
* [ ] Other base weapons

## Experimental Devices

* [ ] Device system
* [ ] Equip / remove devices
* [ ] Device stacking
* [ ] Device interactions
* [ ] Projectile modifications
* [ ] Secondary devices

---

# 3. Enemies

## Enemy Framework

* [ ] Enemy base behavior
* [ ] Health / damage
* [ ] Death
* [ ] Targeting player
* [ ] Attack telegraphs
* [ ] Attack cooldowns

## Prototype Enemies

* [ ] Boxing glove
* [ ] Bull-whip
* [ ] Riot shield
* [ ] Grenade
* [ ] Other enemy

For each enemy:

### Enemy Name

**Purpose:**
**Primary behavior:**
**Threat:**
**Counterplay:**

* [ ] Movement
* [ ] Attack
* [ ] Telegraph
* [ ] Damage
* [ ] Death behavior
* [ ] Visual placeholder
* [ ] Audio placeholder

---

# 4. Projectile System

* [ ] Projectile base class/system
* [ ] Movement
* [ ] Collision
* [ ] Lifetime
* [ ] Damage
* [ ] Destruction
* [ ] Projectile modifiers

## Behaviors

* [ ] Homing
* [ ] Piercing
* [ ] Bouncing
* [ ] Splitting
* [ ] Explosive
* [ ] Incendiary
* [ ] Chain lightning
* [ ] Spiraling
* [ ] Orbiting
* [ ] Other

## Projectile Interactions

* [ ] Repulsion
* [ ] Fusion
* [ ] Cloning
* [ ] Detonation
* [ ] Property inheritance

---

# 5. Rooms / Dungeon

## Room System

* [ ] Room scene/template
* [ ] Doors
* [ ] Room transitions
* [ ] Room completion
* [ ] Room state
* [ ] Room connections

## Room Types

* [ ] Combat room
* [ ] Reward room
* [ ] Upgrade room
* [ ] Secret room
* [ ] Boss room

## Dungeon Flow

* [ ] Intro / starting room
* [ ] Room progression
* [ ] Exit requirements
* [ ] Secret room discovery
* [ ] Boss access

---

# 6. Progression

* [ ] Currency
* [ ] Loot
* [ ] Experimental device rewards
* [ ] Device inventory
* [ ] Run state
* [ ] Death/reset behavior
* [ ] Between-room persistence

---

# 7. Boss

## Boss Framework

* [ ] Boss health
* [ ] Boss arena
* [ ] Phase system
* [ ] Attack patterns
* [ ] Telegraphs
* [ ] Damage states
* [ ] Death sequence
* [ ] Reward

## Boss Design

**Weapon / experiment:**
**Core mechanic:**
**Attack 1:**
**Attack 2:**
**Attack 3:**
**Phase change:**
**Player mechanic being tested:**

---

# 8. Presentation

## Art

* [ ] Player placeholder
* [ ] Enemy placeholders
* [ ] Room tiles
* [ ] Projectiles
* [ ] Effects
* [ ] Experimental device visuals

## Animation

* [ ] Player movement
* [ ] Shooting
* [ ] Damage
* [ ] Dash
* [ ] Enemy attacks
* [ ] Enemy deaths

## Audio

* [ ] Player shooting
* [ ] Enemy attacks
* [ ] Hits
* [ ] Deaths
* [ ] Movement
* [ ] Ambient sounds
* [ ] Music

## UI

* [ ] Health
* [ ] Currency
* [ ] Current weapon
* [ ] Experimental devices
* [ ] Pause
* [ ] Death/restart

---

# 9. Technical / Godot

## Architecture

* [ ] Scene structure
* [ ] Player architecture
* [ ] Enemy architecture
* [ ] Weapon architecture
* [ ] Projectile architecture
* [ ] Room architecture
* [ ] Game state
* [ ] Resource/data definitions

## Tools / Infrastructure

* [ ] Debug controls
* [ ] Debug UI
* [ ] Test scenes
* [ ] Reusable components
* [ ] Save/load if necessary
* [ ] Performance testing

## Platform

* [ ] Linux development build
* [ ] Windows export
* [ ] Windows test
* [ ] Linux test

---

# 10. Playtesting

## Prototype Checks

* [ ] Player understands premise quickly
* [ ] Movement feels good
* [ ] Shooting feels good
* [ ] Combat is fast
* [ ] Enemy attacks are readable
* [ ] Dodging feels meaningful
* [ ] Experimental devices noticeably change gameplay
* [ ] Rooms feel distinct
* [ ] Boss feels different from normal combat
* [ ] Death/restart is not frustrating

## Playtest Notes

### Test

**Date:**
**What I changed:**

## **What felt good:**

## **What felt bad:**

## **What was confusing:**

## **What should change next:**

---

# 11. Open Design Questions

Questions that need an answer before implementation.

### Gameplay

* [ ] Acceleration or instant movement?
* [ ] Dash / dodge?
* [ ] Recoil?
* [ ] Ammunition / reload?
* [ ] Health model?
* [ ] Death behavior?
* [ ] Room restart vs. floor restart?

### Weapons

* [ ] Number of base weapons?
* [ ] Can weapons be switched?
* [ ] How are weapons acquired?
* [ ] Device inventory limit?
* [ ] Can devices stack?
* [ ] Can devices interact?

### Dungeon

* [ ] Number of rooms?
* [ ] Branching structure?
* [ ] Room connection rules?
* [ ] Secret room rules?
* [ ] Currency purpose?

### Enemies

* [ ] Final prototype enemy list
* [ ] Counterplay for each enemy

### Boss

* [ ] Boss identity
* [ ] Boss attacks
* [ ] Boss phases
* [ ] Boss reward

---

# 12. Ideas / Backlog

Ideas that are interesting but are **not currently being implemented**.

* [ ]
* [ ]
* [ ]
* [ ]

---

# 13. Current Definition of Done

The prototype is finished when:

* [ ] One complete level exists
* [ ] 8–10 rooms are playable
* [ ] Core movement is implemented
* [ ] Core combat is implemented
* [ ] Several enemy types exist
* [ ] Experimental upgrades work
* [ ] A boss fight works
* [ ] Death/restart works
* [ ] The complete prototype can be played from beginning to end
* [ ] The core game premise is understandable without developer explanation
