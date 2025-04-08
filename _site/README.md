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

1. Install Ruby dependencies:

   ```bash
   # Install Bundler if not already installed
   gem install bundler --user-install

   # Install project dependencies
   bundle install --path vendor/bundle
   ```

1. Install uv (if not already installed):

   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

1. Install Python dependencies with uv sync:

   ```bash
   uv sync -e ".[all]"  # Installs all dependency groups in a virtual environment
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

1. Install pre-commit hooks (including post-checkout, post-merge, and
   post-rewrite hooks):

   ```bash
   pre-commit install --install-hooks -t pre-commit -t post-checkout -t post-merge -t post-rewrite
   ```

1. Install markdown linting tool (optional):

   ```bash
   # Install with user permissions to avoid permission errors
   gem install mdl --user-install
   ```

### Writing Content

Content is organized in the `docs/` directory. Each chapter is a separate
Markdown file.

The book follows the "Friends Don't Let Friends..." format, covering topics like:

- Project structure and environments
- Version control with Git
- Effective use of the standard library
- Testing practices
- Avoiding over-engineering with OOP and functional paradigms
- Type annotations
- Code formatting and style

### Local Preview

To preview the book locally, you can use either of these commands:

```bash
bundle exec jekyll serve
```

Or using Bun:

```bash
bun run jekyll:serve
```

Note: If you installed gems with `--user-install`, you may need to use:

```bash
bundle exec --path vendor/bundle jekyll serve
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
