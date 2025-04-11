from typing import Iterable
from collections import defaultdict
from collections import Counter


def terrible_counter(words: Iterable[str]) -> dict[str, int]:

    word_counts = {}

    for word in words:
        if word in word_counts:
            word_counts[word] += 1
        else:
            word_counts[word] = 1
    return word_counts


def better_counter(words: Iterable[str]) -> dict[str, int]:

    word_counts = defaultdict(int)

    for word in words:
        word_counts[word] += 1

    return dict(word_counts)


def pragmatic_counter(words: Iterable[str]) -> dict[str, int]:

    word_counts = Counter(words)

    return dict(word_counts)


if __name__ == "__main__":
    from pathlib import Path

    words = iter(Path("README.md").read_text().lower().split())
    print(pragmatic_counter(words=words))
