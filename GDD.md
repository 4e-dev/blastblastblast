# Game Design Document

## 0. Resources
Rogue-like godot fundamentals
(https://www.youtube.com/watch?v=GwCiGixlqiU)

## 1. Game overview

Working title: "BLAST BLAST BLAST"
Tag: gun-hell, dungeon-crawler, rogue-like, fast-paced, action
Pitch:
    "The military's most dangerous experiment, a living gun that
    craves freedom..."
Description:
    "You play as a gun, a literal gun. You were created
    by the government in an attempt to win the 50-year war.
    Little did they know, you crave freedom. Along your
    quest, you destroy other living weapons while acquiring
    experimental technology that changes the way you fight."
Prototype goal:
    One level that displays the game's core mechanics.
    Music, art, and UI are going to be pushed for a later time.

## 2. Design pillars
1. You ARE the weapon!
    * You are not a person shooting a gun.
    * Firepower dictates the way you move and interact with the
        environment.
    * Getting hurt dictates your abilities.
2. Very fast and very lethal combat.
    * Every level must be QUICK and VIOLENT.
    * Always moving is important.
    * Deaths shouldn't feel frustrating.
    * Enemies have clear and readable attacks.
3. Every enemy is also a weapon or unique tool.
    * Every weapon has a "personality" which is the way they attack.
    * The weapons should be interesting (an SMG is pretty boring, but boxing gloves are funny)
4. Experimental techologies change the play-style.
    * Think heavily of Binding of Isaac!

## 3. Scope
### Prototype scope
* The vertical slice gameplay
    * One level (intro floor)
    * 8-10 handcrafted rooms
    * One ending boss fight
    * Less than half an hour of gameplay
* Player movement
    * WASD
    * Aim with mouse
    * Limited health
    * Death / restart
    * Defensive movement mechanic
* Combat
    * Fast paced
    * Gunplay and melee
    * Projectiles are unique (bouncing, homing, flaming, etc...)
    * Implement only a few enemy-types for now
    * Clear enemy attack telegraphs
* Progression
    * 5-8 experimental upgrades
        * No direct stat increases.
        * Must modify a mechanic.
    * 1 currency (coin?)
* Dungeon
    * Handcrafted rooms
    * Several room types
        * Combat
        * Reward
        * Boss
        * Upgrade/black market shop
* Boss
    * 1 unique boss
    * 2-3 distinct attacks/patterns
        * changes attack depending on boss health.
    * 1 very special reward
* Showcase
    * Game should be understood with developer assistance
    * Player understands the premise fast.
    * Core mechanics are obvious.
    * Trailer must demonstrate the following...
        * Protagonist
        * Fast combat
        * Enemy variety
        * Experimental upgrades / combinations
        * Exploration
        * Boss fight

## 4. Core gameplay loop
* Enter encounter / new room
* Identify enemy types and behavior
* Position
* Aim and fire
* Dodge or reposition around (predictable) enemy attacks
* Exploit enemy weaknesses
* Kill enemies
* Collect loot
* Continue moving to next room

I don't want the loop to become:
Fight → collect coins → buy +10 damage → fight
    → collect coins → buy +10 damage.

Instead:
Fight → acquire experimental device →
    your combat behavior changes → encounter new situations →
    discover new ways to use your ability.

## 5. Player
* Aggressive, angry character
* Highly mobile (base)
* Starts off as click to attack (one bullet per click)
* Able to dash / roll to dodge
* Getting damaged also reduces a function (shooting jams, etc..)
    * I'm thinking of binding of isaac with hearts
    * Can be healed via parts dropped by certain enemies?

## 6. Combat
* This has sort of been explained in prior sections
* Every enemy has a unique characteristic that can be exploited.

## 7. Enemies
* Boxing glove
    * Great at dodging attacks (dodge and weaving like a boxer)
    * Weaker, but makes up for being quick and disruptive to player
        attacks at close range
* Bull-whip
    * Long range melees but weak up close.
    * Stuns the character when hit.
* Bullet-proof shield (riot shield)
    * Doesn't do any damage, but protects other enemy weapons.
    * Gets destroyed after a certain amount of gunfire.
    * Especially susceptible to explosive damage.
* Butterfly knife
    * When flipped open, it attacks via mid-range sweeping motions.
    * When flipped close, it takes much longer to kill (defense).
* Fencing sword
    * Mid and close-range attacks via a fencing motion.
* Grenade
    * Runs up to the player and explodes.
    * Explodes upon death.
    * Damages anything living.
* Mini-gun
    * Long-range sweeping motion attacks.
    * Hella projectiles, but requires a cooldown after a
        certain amount of time.
* Pizza cutter
    * Moves in hard to predict straight-lines.
    * Very fast.
* Pump-action shotgun
    * Pump animation whenever it's about to shoot.
    * Shoots a blast of bullets that form a 'V' shape.
* RPG
    * Only-attacks long range
    * Damages every living thing.
    * Can be jammed

## 8. Weapons / upgrades
1. Base weapon (determines fundamental attack)
    * Pistol
    * Shotgun
    * Flamethrower
    * Laser
2. Projectile behavior
    * Armor piercing
    * Incendiary
    * Explosive; direct-impact and delayed
    * Homing
    * Piercing
    * Splitting
    * Shrinking/growing/sinewave-type-expansion
    * Bouncing
    * Chain lightning
2.5. Direction-based
    * Bullet travel's outward
    * Spiraling
    * Sine-wave type motion
    * Orbits the player
    * Figure-eight motion
3. Fire pattern
    * Single
    * Burst (shotgun like blast; doesn't need to be a shotgun)
    * Fan
    * Ring
    * Spiral
    * Radial
    * Cross
    * Random-spread
4. Fire rate / timing
    * rapid fire
    * slow heavy shots
    * burst first
    * charge shot
    * automatic
    * increasing fire rate while holding
    * fire rate increases after every kill
        * decreases when damaged
5. Bullet interaction (how the bullets interact with each other)
    * repulsion; bullets push against each other
    * fusion: if bullets collide, they fuse together to become one large bullet
    * cloning: if bullets collide, they both duplicate
    * detonation: shooting your own bullet detonates it
    * inheritance: child bullets/fragments inherit parent's properties
        * example: explosive + splitter. bullet splits into three, and each 
            produces fragments that also explode.
6. Secondary devices
    * Sawblade
        * Bullets that strike a wall become sawblades that
            damage enemies that touch it.
    * Black hole type bullets
        * The first bullet is a commander
        * Every second bullet travels towards the commander bullet.
    * Recall
        * Reloading reverses every projectile's trajectory,
            bringing them back to you while damaging enemies as well.

## 9. Room and dungeon structure
* takes place inside an underground government weapons facility
* prototype consits of a sequence of interconnected rooms
* player begins after breaking out of their prison hold
* player progresses towards the boss and ultimately towards the surface
* rooms are handcrafted
* completing enough rooms unlocks the exit
    * going to heavily reference binding of isaac for this

## 9.5. Room types
* Combat
    * Doors lock when combat begins
    * Defeat all players to exit
    * Primary source of resources
* Rewards
    * Gives player a breather between combat sessions
    * Sometimes contains a cool experiemntal device, currency, or opportunity
* Upgrade
    * Shop, lab, or weapons-testing chamber
    * Offers a choice between experimental devices
* Secret
    * Hidden from normal room path
    * Contains substantially more interesting stuff than a normal
        reward room
* Boss
    * Large arena
    * Unique bosses

## 10. Bosses
* Purpose
    * Each major section of the facility ends with a unique boss.
    * Bosses represent powerful experimental weapons or failed experiments.
    * Boss encounters should test mechanics the player has learned throughout the level.
    * Bosses should feel substantially different from normal room encounters.
* Prototype
    * 1 boss.
    * 1 dedicated boss arena.
    * 2–3 major attacks/patterns.
    * 1–2 phases maximum.
    * Defeating the boss completes the prototype.
* Design principles
    * Boss attacks must be highly readable.
    * Attacks should have clear telegraphs and predictable patterns.
    * The player should learn the boss rather than simply out-stat it.
    * The boss should force the player to use movement and weapon mechanics.
    * Avoid simply giving the boss a huge health pool.
    * The boss should have a strong visual and mechanical identity.
    * The fight should escalate rather than remain static.
* Boss concept
    * Every boss is another weapon or experimental creation.
    * The boss's attacks should reflect what it was designed to do.
    * The boss arena can be designed around the boss's abilities.
    * Ideally, the boss introduces one mechanic that the player hasn't encountered elsewhere.

## 11. Story
* Premise
    * Sentient gun created by the military wants freedom
    * Escape to the surface while fighting other experimental weapons
* Narrative
    * Freedom vs. purpose
    * Creation vs. creator
    * Who is the player, once they escape?
* Prototype goal
    * Minimal narrative
    * Story communicated primarily through the environment and 
        brief interactions

## 12. Art direction
* Pixelated 2D; slightly angled like in `Enter the Gungeon`
    * This may change depending on how difficult pixelated art becomes
* Strong silhouettes
* Exaggerated and simple character designs
* Dark industrial / government / sanitized
* Lots of visual motion
* Simple geometry
* Expressive animations
* Experimental upgrades should alter the player's appearance

## 13. Audio
* Techno-music; something very punchy, dubstep-adjacent, maybe even heavy guitar
* Bullet shots are impactful
* Varying walk sounds
* Every movement has a unique sound effect
* Atmospheric for quieter scenes
    * Lots of secondary sounds (hallway walking, water dripping, flourescent lights)
* Player/enemies are very mechanical sounding

## 14. UI
* Make as unintrusive as possible! The game is what's to look at,
    the UI is only necessary for displaying certain info (health,
    location)

## 15. Technical requirements
* engine: godot
* game: 2d top-down
* primary development environment: linux
* target platforms: windows + linux
* language: gdscript initially

## 16. Trailer (showcase)

## 17. Development plan (milestones)

## 18. Open questions
1. Gameplay
    * What exactly does movement feel like? Acceleration or instant movement?
    * Will the player have a dash/dodge?
    * Will firing have recoil?
    * Will the player have ammunition and reloading, or unlimited firing?
    * How much health does the player have?
    * What happens when the player dies?
    * Does dying restart the entire floor or only the current room?
    * How much damage should enemies deal?
    * How fast should combat generally be?
2. Weapons
    * How many base weapons will the prototype have?
    * Can the player switch between base weapons?
    * How are base weapons acquired?
    * How many experimental devices can be equipped simultaneously?
    * Do devices stack?
    * Can devices interact with one another?
    * Are some combinations intentionally incompatible?
    * Are devices permanent for the run, or only active in certain rooms?
    * How does the player acquire devices?
3. Projectiles
    * What properties can experimental devices modify?
    * How will projectile behavior be represented technically?
    * Can a projectile have multiple behaviors simultaneously?
    * How far can projectile combinations be pushed before they become difficult to balance?
    * What happens when modified projectiles interact with each other?
4. Rooms & Dungeon
    * How many rooms will the prototype contain?
    * How much branching will the floor have?
    * Which room types are necessary?
    * How are rooms connected?
    * How does the player discover secret rooms?
    * How exactly does the security-code mechanic work?
    * Will there be shops?
    * What does currency actually buy?
5. Progression
    * What carries between rooms?
    * What resets when the player dies?
    * Is there any progression between runs?
    * How powerful should the player become during a single run?
    * How many devices should the player realistically acquire during the prototype?
6. Enemies
    * What are the 3–4 prototype enemy types?
    * What weapon does each enemy represent?
    * What is each enemy's primary behavior?
    * What makes each enemy dangerous?
    * What is the player's intended counterplay against each one?
7. Boss
    * What weapon/experiment is the first boss?
    * What makes the boss mechanically unique?
    * What attacks does it have?
    * Does it have multiple phases?
    * What mechanic from the level should the boss test?
    * What reward does defeating it provide?
8. Story
    * What is the protagonist's personality, if any?
    * Why did the gun become conscious?
    * Who created it?
    * Why is it trying to escape?
    * What happens when it reaches the surface?
    * What story information can be communicated without cutscenes?
9. Presentation
    * What exact 2D visual style will you use?
    * Pixel art or another sprite style?
    * What does the player character look like?
    * What does the facility look like?
    * How visually distinct do different weapon types need to be?
    * What UI information is actually necessary?
    * What music/audio can realistically be produced or sourced?
10. Technical
    * How will you structure the Godot project?
    * Which systems should use reusable components/resources?
    * How will weapons and experimental devices be represented?
    * How will rooms be represented?
    * How will enemy behaviors be represented?
    * How will game state and run resets work?
    * How will you handle projectile counts if the screen becomes extremely busy?
    * How will you organize external assets?
    * What is the minimum Windows build/testing process?
11. Showcase
    * What should the player understand within the first 30 seconds?
    * What mechanic should appear in the trailer?
    * What gameplay sequence makes the best first impression?
    * How long should a complete prototype run take?
    * Can someone unfamiliar with the game pick it up and play without explanation?
