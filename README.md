# johanmagnusson/dotfiles

Managed with [rcm](https://github.com/thoughtbot/rcm). Requires [Homebrew](https://brew.sh/) for macOS.

## Usage

Clone repo:

```shell
% git clone git@github.com:johanmagnusson/dotfiles.git ~/src/github.com/johanmagnusson/dotfiles
```

Install dependencies:

```shell
% brew bundle
```

The `rcrc` file needs to be bootstrapped manually, as it controls behavior of the `rcm` commands:

```shell
% ln -s ~/src/github.com/johanmagnusson/dotfiles/rcrc ~/.rcrc
```

Enable the rc files. For all files, use:

```shell
% rcup
```

## dump-env

`local/bin/dump-env` captures the login-shell environment (PATH + key tool
variables) for a working directory and writes it to an env file. Useful for GUI
apps launched outside a terminal (e.g. [Conductor](https://www.conductor.build/)),
which skip macOS `path_helper` and the zsh login files and therefore can't find
`brew`, `rv`, `nodenv`, `psql`, and friends. Point such an app's env-file setting
at the generated file.

```shell
% cd ~/some/project
% dump-env                 # writes ./.env.dump
% dump-env --print         # write to stdout instead
% dump-env --help
```

The environment is captured from a clean login shell run in the target directory,
so caller PATH leakage is avoided and per-project resolution is reflected. The
`.env.dump` name is `.env`-prefixed so existing `.env*` gitignore rules cover it.
Re-run after installing new tools to refresh the file.
