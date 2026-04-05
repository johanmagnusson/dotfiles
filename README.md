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
