# Pragmatic Python

> Friends Don't Let Friends Write Mediocre Code

## About This Book

So, you’re pragmatic, eh? Pragmatic Python is a book my alter-ego always wanted
to write to my democratic self. It is fiercely opinionated way to programming
with Python.

I bring a hefty dose of Danish sarcasm to the table and don’t take
everything too seriously—because, let’s be real, religiously following ideas,
best practices, design patterns or rules is a total buzzkill (and frankly
anti-pragmatic). It’s for my book, Pragmatic Python, of course.

## Development

This book is built using Jekyll and GitHub Pages. The content is written in
Markdown and automatically published when changes are pushed to the main branch.

### Setup Development Environment

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/pragmatic-python.git
   cd pragmatic-python
   ```

1. Install uv (if not already installed):

   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

1. Install dependencies with uv sync:

   ```bash
   uv sync -e ".[all]"  # Installs all dependency groups in a virtual environment
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

1. Install pre-commit hooks (including post-checkout, post-merge, and
   post-rewrite hooks):

   ```bash
   pre-commit install --install-hooks -t pre-commit -t post-checkout -t post-merge -t post-rewrite
   ```

### Writing Content

Content is organized in the `docs/` directory. Each chapter is a separate
Markdown file.

### Local Preview

To preview the book locally:

```bash
bundle exec jekyll serve
```

This will start the Jekyll development server and you can view the site at [http://localhost:4000](http://localhost:4000).

You can also build the site without serving it:

```bash
bundle exec jekyll build
```

Other useful commands:

```bash
# Format markdown files
bun run format

# Run LanguageTool for grammar checking
docker run --rm -p 8010:8010 erikvl87/languagetool
```

## License

This project is licensed under the MIT License - see the LICENSE file for
details.
