# CS50 Final Project Rubric

This is an *initial rubric* and we reserve the right to update it based on things that come up after posting the rubric.
This page provides detail on the published grade breakdown.

---

## Design spec (20%)

### Teams of 3 students:

We grade this section out of 26 points.

#### Presentation (10 points)

"In 10 minutes you must present an *overview* of your design decisions and how your group will divide the work; the design document provides more detail. Be prepared to answer questions and receive feedback."

* (4) Good overview of the design.
* (4) Decomposition and data structures.
* (2) Plan for division of the work.

#### Document (16 points)

"Your design document (written in Markdown) shall describe the major design decisions, plan for testing, and the roles of each member of your group."

**Server (16):**

* (4) Inputs and outputs
* (4) Functional decomposition into functions/modules
* (4) Major data structures
* (4) High-level pseudo code

### Teams of 4 students:

We grade this section out of 38 points.

#### Presentation (10 points)

"In 10 minutes you must present an *overview* of your design decisions and how your group will divide the work; the design document provides more detail. Be prepared to answer questions and receive feedback."

* (4) Good overview of the design.
* (4) Decomposition and data structures.
* (2) Plan for division of the work.

#### Document (28 points)

"Your design document (written in Markdown) shall describe the major design decisions, plan for testing, and the roles of each member of your group."

**Client (12):**

* (2) User interface
* (2) Inputs and outputs
* (4) Functional decomposition into functions/modules
* (4) High-level pseudo code

**Server (16):**

* (4) Inputs and outputs
* (4) Functional decomposition into functions/modules
* (4) Major data structures
* (4) High-level pseudo code

---

## Implementation spec (15%)

We asked for "a summary of your approach to implementing the server (and client, for teams of 4) and any modules, providing the prototype and brief description of each function, and specifics of the data structure(s) you plan to use."
The "implementation spec should describe all of your implementation's units (other than those we provide), provide pseudo code for each unit's functions (including prototypes and their parameters), describe every major data structure, and briefly describe a testing plan."

We're looking for a clear, modular structure with well-chosen data structures, function names, and function interfaces.

We grade this section out of 38 points.

**Teams of 3 students:**

* (7) module structure, cohesion, coupling
* (8) function prototypes (server)
* (8) function descriptions & pseudocode(server)
* (8) data structures (server)
* (3) testing plan (server)

**Teams of 4 students:**

* (6) module structure, cohesion, coupling
* (5) function prototypes (server)
* (5) function descriptions & pseudocode (server)
* (5) data structures (server)
* (3) function prototypes & pseudocode (client)
* (3) function descriptions (client)
* (3) data structures (client)
* (2) testing plan (server)
* (2) testing plan (client)

---

## Code style and quality (15%)

See *CS50 coding standards* in `logistics/style.md` within this term's home-private repo.

We grade this section out of 15 points.

* (2) organized and efficient
* (2) all members have meaningful speaking role
* (2) identify known limitations of implementation
* (1) show a new, nontrivial map
* (8) game runs smoothly, demonstrating that the core requirements work:
  * spectator mode
  * multiple players
  * visibility - "known" and "sees"
  * gold collection
  * game over

## Git and Git-Flow practices (10%)

Your repo *must* have a git branch `submit-final`.
We will grade the contents of that branch as it appears on GitHub at the moment of the deadline; if you want us to grade a later commit, despite the lateness penalty, let us know.

We grade this section out of 20 points.

* (6) git commit history - logical groupings of changes in each commit, and meaningful commit messages.
* (8) git-flow - good use of branches and [git-flow](https://www.cs.dartmouth.edu/~cs50/Lectures/units/git-flow.html).
* (6) no executable files, object files, core dump files, editor backup files, or extraneous files existing in any directory.

---

## Functionally correct and complete (30%)

To be "correct and complete" means your code conforms to the Requirements Spec.

We grade this section out of 60 points.

### Teams of 3 students:

* (2) server commandline, per spec
* (10) server supports one player, per spec
* (10) server supports multiple players, per spec
* (8) server supports spectator, per spec
* (10) server supports 'visibility' spec
* (8) server tracks gold, per spec
* (4) server produces Game Over summary, per spec
* (2) new, valid, non-trivial mapfile

### Teams of 4 students:

* (2) server commandline, per spec
* (8) server supports one player, per spec
* (8) server supports multiple players, per spec
* (2) server supports spectator, per spec
* (8) server supports 'visibility' spec
* (2) server tracks gold, per spec
* (2) server produces Game Over summary, per spec
* (2) new, valid, non-trivial mapfile
  
* (2) client commandline, per spec
* (6) client plays as player, per spec
* (6) client plays as spectator, per spec
* (4) client asks for window to grow, per spec
* (2) client prints Game Over summary, per spec

---
## Extra Credit 

| **Extra credit points** | **Extra work** <br />(likely requiring cllient and server changes) |
| ----------------------- | ------------------------------------------------------------ |
| up to 5                 | Gold stealing                                                |
| up to 5                 | Set a range limit on vision, e.g., a diameter of five spots. |
| up to 5                 | alert players when they "hear someone coming"                |
|                         | Other extras if pre-approved by instructor                   |
|                         |                                                              |
---
## Penalties

* (-1..3) fails to compile cleanly (no errors or warnings) from top-level Makefile
* (-1..5) memory leaks/errors caused by *student* code
* (-1..5) output to stdout other than what is required to play the game
* (-1..5) doesn't handle errors gracefully
* -10 Segmentation Faults (each unique one)

---

## Lateness (-10%)

If the `submit-final` branch appears late, we take
**10 points per hour**, prorated by the minute, *off the top.*
This means that you lose (10/60 x minutesPastDeadline) points off your total project grade.
