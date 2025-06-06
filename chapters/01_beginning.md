## Leaving the Basic Behind

```{note}
# Pragmatic Python Package Managers

Forget juggling [`poetry`](https://python-poetry.org/) and [`pyenv`](https://github.com/pyenv/pyenv). The future is [`uv`](https://docs.astral.sh/uv/), a complete, pragmatic, all-in-one solution for Python’s ecosystem. It is the one ring to rule them all. If your organization is married to the [`conda`](https://docs.conda.io/) ecosystem, go for [`pixi`](https://pixi.sh/).

Stick with `uv` or `pixi`, and you’ll thank me later.
```

#### Structure Like You Mean It 
> Friends Don’t Let Friends Mess with System Path
  
If you are battling circular imports, your imports inclues`src.X`, or shoving `sys.path` hack to make your code run, congrats, you are slinging mediocre joker code, pure clown project structure so tangled, it would make Danes yeet their Carlsberg.

This chapter is about structure: a pragmatic project structure , built for ETC—easy to change, test, onboard. Why? Control. A pragmatic designed system keeps bugs, delays, and costs from screwing your reputation and your company, a distance. Like milk on the fridge door or the trash bin under the kitchen's sink, everything ought to be where it belongs, because losing control is not a Danish lifestyle. It is not an option.

##### 1.1 Structure is Your Danish Kontrol

You are in WC, our favourite quiet office room,  picture this, the toilet paper is across the room. You reach for it, shit gets messy, literally. That is code without structure. In a Danish flat, the bin is under the kitchen sink, milk is on the fridge door, butter is in its slot, order kills chaos. Danes are busy being happy. No time for _rod_.

A Python project is no different. Misplace a file, and you are out of control: bugs creep, shipping stalls, your reputation tanks, production costs skyrocket. A pragmatic project structure means it is ETC—easy to change, test, onboard. It puts you in charge. No hunting, no cursing. 

Use `uv init --lib` and `SOLID` principles—`Single Responsibility (S)`, `Dependency Inversion (D)` and `Interface Segregation`, to craft a system as tight as a Copenhagen kitchen. Yes, you heard me correct, principles also applies to our project structure as much as they apply to the code we write.

##### 1.2 Step 1: Clean Slate - `uv init --lib nudge`

###### Building `nudge`: A Pragmatic Book Recommender

Let us craft `nudge`, a book recommendation system that is all about practical nudges to great reads, no fluff, just results. We are diving in with [`uv`](https://docs.astral.sh/uv/) because it’s the pragmatic choice: `uv init --lib nudge`. It is stepping into a Copenhagen flat, clean, logical, primed for `hygge` without the clutter.

This command sets up a lean foundation: [`pyproject.toml`](https://peps.python.org/pep-0518/) at the core, ready to orchestrate packaging, linters, type checkers, and whatever else you throw at it. No overengineered nonsense—`uv` gives you what you need to ship. The `src/nudge/` directory is your blank canvas for code that *works*. Want truth? We’ll carve it out ourselves: `mkdir tests/` to keep things Noma's kitchen-knives' sharp focus with tests that don’t lie.

We’ll loop back to `pyproject.toml` to squeeze some ounce of utility from it. For now let's zero on structure. Built to deliver, not to impress. No one-file dumpster fires or import roulette. This is ETC's base: change code? `src/`. Test it? `tests/`. Onboard? 'Code is here, tests there.' Control starts here, no `sys.path` clownery, no joker code slipping through.

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

Let's fire it up.

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
Skål! `det her er helt vild!`. One file, one job, one test. Change `recommend`? It’s right there. Test? Run one file. Onboard? ‘This suggests.’ Like toilet paper arm’s reach, no messy `sys.path` creeping in. It just works. Pure `fadøl`. A Nørrebro Øko Classic.

###### Pragmatic Package Separation

Did you notice we separated our packages installations into sections? Yes, design principles apply to how we organize external packages. This lets us include only the packages needed for a specific flow. For example, you don’t want [`pre-commit`](https://pre-commit.com/), [`pytest`](https://pytest.org/), or linters cluttering your production flow, do you? Keep _`lort`_ away. Keep it lean, keep it right. 

Now, Commit or Quit: No Version Control, No Mercy. _Friends Don’t Let Friends Skip Git_. `git add <FILES>; git commit -m "Start project nudge"`. 



##### 1.3 Step 2: Single Responsibility—Labeled Jars

`Single Responsibility (S)` is Danish order: one thing, one place. It is our path to ETC. To keep control: change one part, others sip coffee; test one job; onboard with ‘this does this.’ No delays, no reputation hits.  Every folder, file, function gets one job, project-wide. 

Let us add an `api` layer to spice things up, without moving toilet paper across the room. No surprises here—[`FastAPI`](https://fastapi.tiangolo.com/) is the pragmatic choice. Run `uv add --group api "fastapi[standard]"`. 

_`Rolig nu`_: Do not stress about a Cambrian explosion of files and folders. We’ll clear out the files and build it slowly. For now, let us focus on project structure.


 `````{tab-set}
````{tab-item} Updated Layout
```{code-block} sh

.
├── pyproject.toml
├── README.md
├── src
│   └── nudge
│       ├── __init__.py
│       ├── app
│       │   ├── api
│       │   │   └── routes
│       │   │       ├── __init__.py
│       │   │       ├── heartbeat.py
│       │   │       └── recommender.py
│       │   ├── core
│       │   │   └── config.py
│       │   ├── main.py
│       │   ├── models
│       │   │   ├── __init__.py
│       │   │   ├── heartbeat.py
│       │   │   └── recommender.py
│       │   └── services
│       │       └── recommender.py
│       ├── py.typed
│       └── recommender.py
├── tests
│   ├── __init__.py
│   ├── app
│   │   ├── conftest.py
│   │   ├── test_api
│   │   │   ├── test_heartbeat.py
│   │   │   └── test_recommender.py
│   │   └── test_services
│   │       └── test_service.py
│   └── test_recommender.py
└── uv.lock


````

````{tab-item} Api Conftest 

```{code-block} python
# tests/app/test_api/test_recommender.py
import pytest
from starlette.testclient import TestClient

from nudge.app.main import app


@pytest.fixture()
def test_client():
    with TestClient(app) as test_client:
        yield test_client
```
````

````{tab-item} Api Tests
```{code-block} python
# tests/app/test_services/test_service.py
from nudge.app.services import recommender
from nudge.app.models import RecommendationResponse


def test_recommend():
    book: str = "smørrebrød"
    results = recommender.recommend(book)

    assert isinstance(results, RecommendationResponse)
    assert results.books == [
        "Suggest: smørrebrød",
    ]

# tests/app/test_api/test_recommender.py
def test_prediction(test_client) -> None:
    response = test_client.post(
        "/api/v1/recommendation",
        json={"book": "smørrebrød"},
        headers={"accept": "application/json"},
    )

    assert response.status_code == 200
    assert "Suggest: smørrebrød" in response.json().get("books")

```
````
`````

Let's fire it up 

 `````{tab-set}
````{tab-item} Run QA
```{code-block} sh

# format
 uv run ruff format

# fix issues
 uv run ruff check --fix

```
````
````{tab-item} Run Tests
```{code-block} sh

 uv run pytest
==================================== test session starts ====================================
platform darwin -- Python 3.12.2, pytest-8.3.5, pluggy-1.5.0
rootdir: /Users/XXXX/Codes/nudge
configfile: pyproject.toml
plugins: anyio-4.9.0
collected 5 items

tests/app/test_api/test_heartbeat.py::test_heartbeat PASSED                           [ 20%]
tests/app/test_api/test_heartbeat.py::test_default_route PASSED                       [ 40%]
tests/app/test_api/test_recommender.py::test_prediction PASSED                        [ 60%]
tests/app/test_services/test_service.py::test_recommend PASSED                        [ 80%]
tests/test_recommender.py::test_recommend PASSED                                      [100%]

===================================== 5 passed in 1.48s =====================================

```
````

````{tab-item} Run Dev Api
```{code-block} sh

# test
uv run fastapi dev src/nudge/app/main.py
````
`````
_`Se mor, det virker!`_ Our `api` is up, nudging books like a charm, no `lort` in sight. Folders know their roles, like milk on the fridge door. Built clean, built right, pragmatic all the way.



````{figure} ../assets/nudge.png
````
```{note}
# 🦦 MDR

A handshake is available on request.

— Cobel, Serevarance
```


##### 1.4 Step 3: D and I — Don’t Touch the Milk 

`Dependency Inversion (D)`— says high-level modules shouldn’t cling to low-level ones, both should lean on abstractions—it says layers don’t own each other; they ask politely. 

In `nudge`, our `routes` shouldn’t dig into the guts of `nudge.recommender`, like you don’t move someone’s milk to get your cheese. Instead, it should use a contract: `services`. 

Our `services` creates the brigde to core functionality, `nudge.recommender`. This cuts ties, between our core `recommender` and api's `routes`, making ETC sing: swap the `nudge.recommender`, `routes` don’t care; mock services for tests; onboard with “this plugs in here.” A nod to `Interface Segregation (I)` keeps it tighter, `routes` only sees the methods it uses, no bloated baggage.


_`Er du faret vild?`_ Did I lose you? It’s okay to feel lost, programming’s beauty lies in that very wondering. What makes *pragmatic programming* so amazing is the chance to learn and uncover simple, intuitive ways to tackle big challenges. Step by step, we’ll build a case for why this approach creates a pragmatic structure. But before we crack open another Tuborg, let’s start at the beginning: [Test-Driven Development (TDD)](https://en.wikipedia.org/wiki/Test-driven_development). This is the spark that lights the pragmatic fire.

next: TDD: chapter 2 that should have been chapter one.
