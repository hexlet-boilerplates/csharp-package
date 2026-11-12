# AGENTS.md

Шаблон пакета на C# и .NET. Код приложения в `src/App`, тесты в `tests/App.Tests`.

## Команды

| Команда | Что делает |
| --- | --- |
| `make install` | Ставит инструменты, восстанавливает пакеты NuGet и ставит git-хуки |
| `make build` | Собирает решение |
| `make run` | Запускает приложение |
| `make test` | Запускает тесты |
| `make test-coverage` | Запускает тесты с покрытием |
| `make lint` | Проверяет форматирование через CSharpier и `dotnet format` |
| `make lint-fix` | Исправляет форматирование |
| `make setup` | Публикует релизную сборку в `dist/` |
| `make update-deps` | Показывает устаревшие зависимости |

## Проверки

`make lint` также проверяет Markdown (`rumdl`), опечатки (`typos`) и workflow GitHub Actions (`jactionlint`). `make install` ставит git-хуки hk, перед коммитом они запускают `make lint`, перед push `make test`.

Перед завершением задачи запусти `make lint` и `make test`, обе команды должны проходить.

## Окружение

Инструменты и их версии задаёт `mise.toml`, ставит их `mise install`.
