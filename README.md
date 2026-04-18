### 🧪 Game Idea: **“Last Drop Brewery”**

### 🎮 Core Concept

You run a tiny potion shop where you must **brew drinks for customers using limited, refillable ingredients**. The twist: your tools and resources are constantly running out, and you must manage them efficiently.

* * *

## 🔁 Core Loop (Very Simple)

1.  Customer appears with a vague request
    -   “Something sweet and energizing”
    -   “A calming fruit drink”
2.  You:
    -   Pick ingredients (🍓 fruit, herbs, liquids)
    -   Add them to a **brewing container**
    -   Time or mix them (simple minigame or just combine)
3.  Serve the result → get a rating + coins
4.  Use coins to **refill limited resources**

* * *

## 🧩 Mechanics (Jam-Friendly)

### 🍹 Brewing (Main Mechanic)

-   Drag & drop 2–3 ingredients into a pot
-   Each ingredient has simple properties:
    -   Sweet 🍓
    -   Bitter 🌿
    -   Energy ⚡
    -   Calm 🌙

➡️ Final potion = combined traits (no complex system needed)

* * *

### ♻️ Finite Refillable Resources (Wildcard)

-   Ingredients are limited (e.g., 3 strawberries, 2 herbs)
-   Water or base liquid refills slowly over time
-   You can:
    -   Buy refills
    -   Wait for passive refill
    -   Or reuse “waste” ingredients (risky mechanic)

* * *

### 🍉 Fruit (Wildcard)

-   Fruit gives strong, obvious effects (great for clarity)
-   Could also **rot over time** → adds urgency

* * *

### 🕹️ Retro Style (Wildcard)

-   Pixel art (16x16 or 32x32)
-   UI like old-school management sims
-   Sound: simple bleeps + looping track
-   Think arcade pacing: fast decisions, quick feedback

* * *

## ⚡ Simple Twist (to stand out)

### “Overbrew Risk”

-   If you add too many ingredients:
    -   Potion becomes unstable 💥
    -   Could either:
        -   Be amazing (rare bonus)
        -   Or fail completely

➡️ Adds tension without complexity

* * *

## 🧱 Super Simple Tech Scope (Godot-friendly)

-   One main scene:
    -   Ingredient buttons
    -   Brewing slots (2–3 max)
    -   Customer request text
-   No need for physics
-   Data-driven ingredients (just dictionaries)ta-driven ingredients (just dictionaries)

Game Loop Written By Logan
1. Scene 1 - you watch customers walk into your shop - based on what a customer looks like will determine what they are likely to want
2. Scene 2 - you harvest resources from your garden based on who you saw walk in, you can no longer see who walked in from the garden. You can choose what you harvest (animals and plants) but be careful, you can only gather so much and what you take can spoil
3. Scene 3 - you go to your shop and start mixing potions for travels using simple additive or negation mixing processes. Customers walk out after getting a potion with a reaction above their head and pay you
4. Scene 4 - an over night event happens - you get robbed (can be prevented if you have a dog), you find spare money or product

Merchants can also come to your shop and sell recipes for special potions that improve your shop, or keys, or bottles for potions
