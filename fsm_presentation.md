---
title:    Dr. StateMachine
author:   Leamon Randall

---


# Dr. StateMachine

## or: How I learned to stop worrying and love the finite

## or...

## Why, when, and where to use state machines?

Also...

-   How do you implement a state machine?
-   What the heck is a state machine anyway?
-   Who is this strange guy at the front of the room?


## A quick note about the title

If you haven't seen _Dr. Strangelove_, go watch it!


# About me

## Leamon Randall

-   Eagle Scout
-   TK


## I am not a rock climber

...but I'm open to exploring it.


## My career in tech and coding

-   I've been around technology for quite a while, but I'm fairly new to tech as a career
-   I am an autodidact
-   I'm open to collaboration


# A beautiful thing

_ _ _

> Nifty quote here TK


## The journey

-   Dunning-Kruger
-   Impostor syndrome


_ _ _

> As our island of knowledge grows, so does the shore of our ignorance.

--   John Archibald Wheeler


## The important thing

...is the size of the island, not the size of the shore.  Keep moving from left to right on that graph.


# A brief history lesson: Turing machines

## What is a Turing machine?

-   Infinite tape that holds a set of symbols (or empty spaces)
-   A mechanism ("head") which can:
    -   Move left and right
    -   Read values
    -   Erase values
    -   Write values
-   A separate set of instructions
    -   Can hold a limited amount of data or state
    -   TK conditional branching, etc.


_ _ _

> It is my contention that these operations include all those which are used in the computation of a number.

--   Alan Turing


## In other words

Using a Turing machine, we can compute anything that is computable.


## But Charles did it first!


## The impact

What was originally a theoretical thought experiment became the basis for computing today.


## Turing completeness

-   Most popular architectures and programming languages today are Turing complete
-   They can be made to compute any function that is computable
-   ...within natural restrictions


## Practically

-   We have more inputs and outputs
-   We don't have unlimited memory
-   Today's computers are incredibly versatile


## Unlimited potential

-   We are no longer limited to machines that do one thing
-   Math
    -   Computing digits of pi
    -   Discovering prime numbers
    -   Calculating hashes of other values
-   Procedural problems
    -   Solving mazes
    -   Sorting lists


## We build on these small solutions

...to help us solve ever-larger challenges.


## "There's an app for that"


## And perhaps...

...we can use this computing power to answer the most important question of all...


## Can it run Doom?


# What is a state machine?

## A subset of Turing machine

-   Takes input
-   Stores data about it's current state
-   Returns an output


## Why limit ourselves?

"I thought you were just singing the praises of the unlimited potential of a Turing machine?"


## Something to mull over

> The purpose of abstracting is not to be vague, but to create a new semantic level in which one can be absolutely precise.

--   Edsger Dijkstra


# Moving on...

## I will not be talking about transitions systems

-   Technically a state machine, but a non-finite version of it
-   More akin to functions with static variables
-   The PIO on the RP2040 is a form of a non-finite state machine like this


# _Finite_-state machines

## I will be talking about finite-state machines

-   (Also called finite-state automata)
-   ...and their extended versions


## What makes a state machine finite?

-   A limited number of states it can be in
-   A limited number of inputs that it can respond to
-   Transitions defined for each state, telling it which state to go to for a given input
-   Still produces an output


# Output

## Simplest case

-   The whole state machine returns a value, like true or false


## Entry and exit actions

-   Functions which can be run on entry to, and exit from, a state


## States can transition to themselves

-   If handled internally
    -   The state stays the same and no actions are run
    -   Often indicated by a lack of documented transition
-   If handled externally
    -   The state runs its exit action and then re-enters itself, running its entry action


## Acting on input as well as state

-   Mealy Machine
    -   (As opposed to a Moore Machine)
-   Adds some complexity
-   ...but can be useful


# Two ways to represent state machines

_ _ _

...that even the marketing team can understand.

_ _ _

(Sorry, marketing people.  We love you.)


# State diagrams

## A basic example

A directed graph showing which states to transition to when an input or event happens (depending on the current state).


## _Not_ a flowchart!


# Hierarchical state machines

## Super-states and sub-states

-   Can have it's own entry and exit actions
-   Similar to inheritance in OOP


## Super-states and transitions

-   We can transition directly to a sub-state
-   Or we can transition to:
    -   The super-state's starting sub-state
    -   The super-state's shallow history
    -   The super-state's deep history


## An example

When creating a UI, when a user hits the back button, we may not want to start them over at the beginning of the list.


# Orthogonal state machines

- We don't need to limit ourselves to one state machine in our program
- We can have several running simultaneously
- They can even talk to each other, sending events (input) to one-another


# Extended state machines

## Guard conditions

-   Only allow a transition to happen out of a state if certain conditions are met
-   The state machine is **no longer deterministic**
-   Often times you can achieve the same goal with a finite-state machine


## Conditional junctions

-   Determine which transition to follow based on a set of conditions
-   Again, **no longer deterministic**


## Regular junctions

-   TK
-   Example: AFK


## A bit of a advice

Try to stay as close to simple as possible, else you end up negating the benefits of state machines.


# State tables

## State table example

- More compact
- Work best for _truly_ finite-state machines
    - More complex setups require notes for explanation


## Pivoting the state table

- Can use either states or events as column headers


# How can you create state machines?

## Three different possibilities


## Nested switch/case statements

(Or if/then/else chains)

-   Good for simple machines
-   Can quickly become very long with more complex machines


## The state pattern



## State tables



## Which to choose?



# Where can you use state machines?

## Embedded systems

You don't want to mess this up, because

> you'll have to answer to the Coca Cola company


## TTL logic



## Pattern recognition -- RegEx

-   The "regular" in _regular_ expressions refers to it being part of a regular language, or a pattern of symbols which can be described by a state machine


## Front end user interfaces



## Back-end services



## Video games



## Many more...


# When should you use a state machine?

## More often!


## Cons



## Pros



## Not appropriate for every situation



## Start simple, and extend as needed



# Why?

_ _ _

(Again)


_ _ _

> The purpose of abstracting is not to be vague, but to create a new semantic level in which one can be absolutely precise.

--   Edsger Dijkstra


## Why use state machines?

Constraints, when used properly, can help make our code better.


## Bug free code is our profession


<!-- *************************************************************** -->


# The end

## Credits

(if needed)


# Resources

## Turing machines

-   Turing (1937), p. 232.
-   <https://www.cs.virginia.edu/\~robins/Turing\_Paper\_1936.pdf>

-   Babbage and Turing: Two Paths to Inventing the Computer
-   <https://www.nathanzeldes.com/blog/2021/04/babbage-and-turing-two-paths-to-inventing-the-computer/>

-   computability - Was Babbage's Analytical Engine really turing-complete?
-   <https://cstheory.stackexchange.com/questions/14262/was-babbages-analytical-engine-really-turing-complete>

-   Let's build Babbage's ultimate mechanical computer
-   <https://www.newscientist.com/article/mg20827915-500-lets-build-babbages-ultimate-mechanical-computer/>

-   Alan Turing name-checks his predecessor Charles Babbage
-   <https://www.wired.com/2012/06/alan-turing-name-checks-his-predecessor-charles-babbage/>


## State machines using TTL logic

-   Finite State Machines | Sequential Circuits | Electronics Textbook
-   <https://www.allaboutcircuits.com/textbook/digital/chpt-11/finite-state-machines/>


# Contact info

## Leamon Randall


## Notes

-   Show internal v. external handling of events
-   Note that states do not need to be static, they can be active: "running, moving, jumping, fetching".
-   Include the fact that you can have multiple state machines within your program.

