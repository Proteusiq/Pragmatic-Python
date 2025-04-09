> Friends Don't Let Friends Write Mediocre Code 

##### Pragmatic Mindset

`/praɡˈmatɪk/` _adjective_ - dealing with things sensibly and realistically in a
way that is based on practical rather than theoretical considerations. -
Oxford's Google Dictionary

Mediocre code sucks—I’ve been there. I’ve written it. I’ve reviewed worse. Picture a chump—me—hammering out scripts with no tests, `pip install` chaos, and prayers to the gods of bytes it’d run on someone else’s rig. The journey to pragmatism? It’s me, fed up with endless rewrites, saying ‘no more.’

Mediocre code isn’t GPT-3.5’s word-salad disaster—it’s just code I can’t stand. Yeah, I said it. My case for pragmatism’s here to make you hate it too. It is okay, to disagree. I expect you to disagree in some cases. It means, you are Pragmatic after all.

 `````{tab-set}
````{tab-item} Terrible

```{code-block} python
from pathlib import Path


class DataLoader:
    def __init__(self, file_path: Path) -> None:
        self.file_path = file_path

    def load(self) -> str:
        with open(self.file_path, "r") as file:
            return file.read()


def main() -> None:
    file_path = Path("README.md")
    loader = DataLoader(file_path)
    data = loader.load()
    print(data)


if __name__ == "__main__":
    main()
```
````

````{tab-item} Better

```{code-block} pythonpython
from pathlib import Path


def load(file_path: Path) -> str:
    with open(file_path, "r") as file:
        return file.read()


def main() -> None:
    file_path = Path("README.md")
    data = load(file_path)
    print(data)


if __name__ == "__main__":
    main()
```
````

````{tab-item} Pragmatic
```{code-block} python
from pathlib import Path


def main() -> None:
    file_path = Path("README.md")
    data: str = file_path.read_text()
    print(data)


if __name__ == "__main__":
    main()
```
````
 `````

Python’s got a million ways to write code—functional, OOP, whatever. A pragmatic
mindset says, I don’t care about the paradigm fetish. I care about code that
works, changes without a meltdown, and doesn’t make onboarding a nightmare. If I
can’t understand and test it in ten minutes, it’s trash.



###### Are You Still My Friend?

So, you’re pragmatic, eh? Then you are still my friend. Pragmatic Python is a book my alter-ego always wanted
to write to my democratic self. It is fiercely opinionated way to programming
with Python.  It is a way for  a friend, opinonated one, who don't let friends write mediocre code. 



###### Who I am? Your Friend, Silly.
I’m Prayson Wilfred Daniel, Principal Data Scientist at `_42`, and I’ve written mediocre codea. I got sick of rewrites, so I flipped the script. Now, I build solutions that `suck-less`: community-driven and design patterns-ish that make code easy to change, test, and onboard. CI/CD testing? Mandatory—I have been tested. This is my Arrange, Act, and Assert book.

I ditched `pandas` bloat for `polars`, `requests` for `httpx`, `unittest` for `pytest`. Legacy’s dead; `uv` and `ruff` run my show. This book’s my alter-ego's fight—pragmatic, no-BS code that works. Friends don’t let friends settle for less. I bring a hefty dose of Danish sarcasm to the table and don’t take everything too seriously—because, let’s be real, religiously following ideas, best practices, design patterns or rules is a total buzzkill (and frankly anti-pragmatic). It’s for my book, Pragmatic Python, of course.

