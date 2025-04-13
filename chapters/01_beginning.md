# Leaving the Basic Behind

```{note}
# Pragmatic Python Package Managers

Forget juggling [`poetry`](https://python-poetry.org/) and [`pyenv`](https://github.com/pyenv/pyenv). The future is [`uv`](https://docs.astral.sh/uv/), a complete, pragmatic, all-in-one solution for Python’s ecosystem. It is the one ring to rule them all. If your organization is married to the [`conda`](https://docs.conda.io/) ecosystem, go for [`pixi`](https://pixi.sh/).

Stick with `uv` or `pixi`, and you’ll thank me later.
```

#### Structure Like You Mean It 
> Friends Don’t Let Friends Mess with System Path
  
If you are battling circular imports or shoving `sys.path` hack to make your code run, congrats—you are slinging mediocre joker code—pure clown nonsense, project structure so tangled they would make a Dane yeet their Carlsberg.

This chapter is about structure: code and project, built for ETC—easy to change, test, onboard. Why? Control. A pragmatic designed system keeps bugs, delays, and costs from screwing your reputation and your company, a distance. Like milk on the fridge door or the trash bin under the kitchen's sink, everything ought to be where it belongs—because losing control’s not an option.

##### 1.1 Structure is Your Danish Kontrol

You are in WC, our favourite quiet office room,  picture this, the toilet paper is across the room. You reach for it—shit gets messy, literally. That is code without structure. In a Danish flat, the bin is under the kitchen sink, milk is on the fridge door, butter is in its slot—order kills chaos. Danes are busy being happy. No time for messy.

A Python project is no different. Misplace a file, and you are out of control: bugs creep, shipping stalls, your reputation tanks, production costs skyrocket. A pragmatic project structure means it is ETC—easy to change, test, onboard. It puts you in charge. No hunting, no cursing. 

Use `uv init --lib` and two `SOLID` principles—`Single Responsibility (S)` and `Dependency Inversion (D)`—to craft a system as tight as a Copenhagen kitchen. Yes, you heard me correct, principles also applies to our project structure as much as they apply to the code we write.

##### 1.2 Setp 1: Clean Slate - `uv init --lib`

Let create a pragmatic project repository, `nudge`. A nudging book recommendation system project. We, of cause, will start with `uv init --lib nudge`. It is like stepping into a Danish flat—bare, logical, ready for `hygge`. You get `pyproject.toml`, a configuration file used by packaging tools, linters, type checkers, et cetera. We will circle back to make maximium use of it. `src/nudge/` for our code, and we self `mkdir tests/` for truth. 

No one-file dumpster fires or import roulette. This is ETC's base: change code? `src/`. Test it? `tests/`. Onboard? 'Code is here, tests there.' Control starts here—no `sys.path` clownery, no joker code slipping through.

 `````{tab-set}
````{tab-item} Intial Layout
```{code-block} sh

.
├── pyproject.toml
├── README.md
├── src
│   └── nudge
│       ├── __init__.py
│       ├── py.typed
│       └── recommender.py
└── tests
    └── test_recommender.py

````

````{tab-item} Test

```{code-block} python
# tests/test_recommender.py
from nudge.recommender import recommend


def test_recommend():
    assert recommend("smørrebrød") == "Suggest: smørrebrød"
```
````

````{tab-item} Code
```{code-block} python
# src/nudge/recommender.py
def recommend(book: str) -> str:
    return f"Suggest: {book}"

```
````
`````

```{note}
# 🦦 
We will come back to `TDD - Test Driven Development` done correctly. For now, lets start with `src/nudge/recommender.py` to focus on structure.
```
_Continue your quest by taking the test_ - Ernest Cline, Ready Player One

Let's fire it.

 `````{tab-set}
````{tab-item} Packages
```{code-block} sh

# add qa tools 
uv add --group qa ruff pre-commits

# add test tool 
uv add --group test pytest
```
````

````{tab-item} QA
```{code-block} sh

# format
 uv run ruff format

# fix issues
 uv run ruff check --fix

```
````

````{tab-item} Test
```{code-block} sh

# test
uv run pytest
````
`````
Boom! `det her er helt vild!`. One file, one job, one test. Change `recommend`? It’s right there. Test? Run one file. Onboard? ‘This suggests.’ Like toilet paper arm’s reach—no messy `sys.path` creeping in. It just works.

Commit or Quit: No Version Control, No Mercy. _Friends Don’t Let Friends Skip Git_. `git add <FILES>; git commit -m "Start project nudge"`. 


##### 1.3 Step 2: Single Responsibility—Labeled Jars

`Single Responsibility (S)` is Danish order: one thing, one place. It is our path to ETC. To keep control: change one part, others sip coffee; test one job; onboard with ‘this does this.’ No delays, no reputation hits.  Every folder, file, function gets one job—project-wide. 

Let's add `api` without moving toilet paper across the room. 

 ... WIP 
Notes: See where I am with code Codes/nudge. Use huggingfaceapi example. 
