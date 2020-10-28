# cz-demo

Demo basic workflow of using [Commitizen](https://commitizen-tools.github.io/commitizen/).

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

- Python 3.6+

- Git 1.8.5.2+

### Installing

Install `Commitizen`

```shell
sudo pip3 install -U Commitizen
```

Install `pre-commit`

```shell
brew install pre-commit
```

> Using other platform? [FYI](https://pre-commit.com/#installation)

### Running

```shell
make init
```

### Set up default git template (optional)

Create a directory for template folder

```shell
mkdir ~/.git-template
```

Set up git to use this folder as the template source

```shell
git config --global init.templateDir ~/.git-template
```

Set up git to use this folder as the template source

```shell
pre-commit init-templatedir ~/.git-template -t commit-msg --hook-type commit-msg
```

This will help sync the .git/hooks when using `git clone` or `git init`.

> And there is a repo that store all the hooks: [MartinChangCF/git-template](https://github.com/MartinChangCF/git-template)

## Github Action

You can set up server-side notification if someone's push one or more commit(s).

It checks all commits as default and if you only use `cz` in a running project.

You can change the `range` field in `.github/workflows/main.yml`

```yaml
- uses: MartinChangCF/commitizen-action@0.4.0
  with:
    # Commit Ranges for checking, default to recent 5 commits
    range: v1.0.0...
```

> `range` is base on [Git Commit Ranges](https://git-scm.com/book/en/v2/Git-Tools-Revision-Selection#_commit_ranges)

## Resources

- VS CODE
  - [Conventional Commits](https://marketplace.visualstudio.com/items?itemName=vivaxy.vscode-conventional-commits)

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

- **Martin Chang** - *Initial work* - [Intrising](https://github.com/MartinChangCF)