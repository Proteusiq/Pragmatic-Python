# Pragmatic Python

A comprehensive guide to mastering Python programming through practical examples and best practices.

## About This Book

Pragmatic Python is designed to help you become proficient in Python programming through hands-on examples and real-world applications. Whether you're a beginner or an experienced developer looking to enhance your Python skills, this book provides practical guidance for writing clean, efficient, and maintainable Python code.

## Development

This book is built using Jekyll and GitHub Pages. The content is written in Markdown and automatically published when changes are pushed to the main branch.

### Setup Development Environment

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/pragmatic-python.git
   cd pragmatic-python
   ```

2. Install uv (if not already installed):
   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

3. Create a virtual environment and install dependencies:
   ```bash
   uv venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   uv pip install -e ".[all]"  # Installs all dependency groups
   ```

4. Install pre-commit hooks (including post-checkout, post-merge, and post-rewrite hooks):
   ```bash
   pre-commit install --install-hooks -t pre-commit -t post-checkout -t post-merge -t post-rewrite
   ```

### Writing Content

Content is organized in the `docs/` directory. Each chapter is a separate Markdown file.

### Local Preview

To preview the book locally:

```bash
jekyll serve
```

Then open your browser to http://localhost:4000

## License

This project is licensed under the MIT License - see the LICENSE file for details.
