# johanmagnusson/dotfiles

Managed with [rcm](https://github.com/thoughtbot/rcm).

## Usage

Install `rcm` if not already available. For macOS:

```shell
% brew install rcm
```

Install [starship](https://starship.rs/) for prompt managment.

```shell
% brew install starship
```

Clone repo:

```shell
% git clone git@github.com:johanmagnusson/dotfiles.git ~/src/github.com/johanmagnusson/dotfiles
```

The `rcrc` file needs to be bootstrapped manually, as it controls behavior of the `rcm` commands:

```
ln -s ~/src/github.com/johanmagnusson/dotfiles/rcrc ~/.rcrc
```

Enable the rc files. For all files, use:

```shell
% rcup
```
