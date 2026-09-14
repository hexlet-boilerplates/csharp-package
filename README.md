# csharp-package

![Build](https://github.com/hexlet-boilerplates/csharp-package/workflows/Build/badge.svg)

A project template with only the bare minimum of structure. A good starting point for a small project.

## Requirements

[.NET SDK 10](https://dotnet.microsoft.com/download)

## Start

```bash
make
```

## Install dependencies

```bash
make install
```

## Build a distribution

```bash
make setup
./dist/App
```

## Run

```bash
make run
```

## Run tests

```bash
make test
```

## Run tests with coverage

```bash
make test-coverage
```

## Run linter

```bash
make lint
```

## Fix formatting

```bash
make lint-fix
```

## Check outdated dependencies

```bash
make update-deps
```

To bump versions in the project files, pass the upgrade flag:

```bash
dotnet outdated --upgrade
```

[![Hexlet Ltd. logo](https://raw.githubusercontent.com/Hexlet/assets/master/images/hexlet_logo128.png)](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=csharp-package)

This repository is created and maintained by the team and the community of Hexlet, an educational project. [Read more about Hexlet](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=csharp-package).
