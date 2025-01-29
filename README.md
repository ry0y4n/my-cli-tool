# My CLI Tool

This repository houses the final product of the tutorial on **building and releasing a Go-based CLI tool**. Check out the article for full details:

-   Article Link: **_[The Ultimate Guide to Building and Releasing a CLI Tool (with Cobra, GoReleaser, and GitHub Actions)](https://momosuke-san.medium.com/the-ultimate-guide-to-building-and-releasing-a-cli-tool-with-cobra-goreleaser-and-github-b0d468788064)_**

## What’s in Here?

-   Basic CLI structure using Go
-   Example subcommands (`root`, `greet`, etc.)
-   Automated builds and multi-platform releases via GitHub Actions

## Quick Start

```bash
# Clone the repo

git clone https://github.com/your-user/my-cli-tool.git
cd my-cli-tool

# Build

go build -o my-cli-tool
./my-cli-tool # "Hello, World!"

# Subcommand example

./my-cli-tool greet
```

For more background, configuration details, or to see how to automate releases, **visit the article above**. Happy coding!
