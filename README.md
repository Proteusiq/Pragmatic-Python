# Pragmatic Python

> Friends Don't Let Friends Write Mediocre Code

## About This Book

So, you’re pragmatic, eh? Pragmatic Python is a book my alter-ego always wanted
to write to my democratic self. It is fiercely opinionated way to programming
with Python.

I bring a hefty dose of Danish sarcasm to the table and don’t take everything
too seriously—because, let’s be real, religiously following ideas, best
practices, design patterns or rules is a total buzzkill (and frankly
anti-pragmatic). It’s for my book, Pragmatic Python, of course.

## Development

This book is built using Jupyter Book II and GitHub Pages. The content is written in
Markdown and automatically published when changes are pushed to the main branch.
The site is automatically built and deployed using GitHub Actions.

### Setup Development environments

uv for environments.   
   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

Clone the repository:

   ```bash
   git clone https://github.com/Proteusiq/Pragmatic-Python.git
   cd Pragmatic-Python
   uv run jupyter book start
   ```


### Writing Content

Content is organized in the `chapters/` directory. Each chapter is a separate
Markdown file.

The book follows the "Friends Don't Let Friends..." format, covering topics
like:

- Project structure and environments
- Version control with Git
- Effective use of the standard library
- Testing practices
- Avoiding over-engineering with OOP and functional paradigms
- Type annotations
- Code formatting and style
- Performance optimization
- Deployment best practices
- Documentation strategies


Other useful commands:

```bash
# Run LanguageTool for grammar checking Obsidian
docker run --rm -p 8010:8010 erikvl87/languagetool
```

### Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
1. Create your typos branch (`git checkout -b typos/fix-typo`)
1. Commit your changes (`git commit -m 'Correct some typo'`)
1. Push to the branch (`git push origin typos/fix-typo`)
1. Open a Pull Request

## License

This project is licensed under the Prayson's License - see the LICENSE file for
details.

© 2025 Prayson Wilfred Daniel. All rights reserved.
