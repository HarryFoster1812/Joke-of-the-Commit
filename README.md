# Joke of the Commit

Automatically appends a joke to every Git commit message — because debugging is better with a little humor.

## Features

- Appends a random joke from JokeAPI to your Git commit messages.
- Supports custom joke categories, blacklist flags, and language via a simple config file.
- Lightweight, no Git aliases or wrapper scripts needed.

## Installation

```bash
git clone https://github.com/harryfoster812/Joke-of-the-Commit.git
cd Joke-of-the-Commit
./install.sh
```

This will install the commit-msg hook into your local Git repository.

## Config

You can customize the joke settings by creating a .jokehookrc file in the home directory
example:

```ini
category=Programming
blacklist=nsfw,religious
lang=en
```

These are the only three options currently supported, to see the values that can be passed please see the [JokeAPI Documentation](https://v2.jokeapi.dev/)

# Notes

- The hook modifies the commit message before the commit is finalised, it won’t affect your code or history.
- The hook only runs locally and must be installed per repository (unless added via a template or global config).

# Uninstall

```bash
rm .git/hooks/commit-msg
```
