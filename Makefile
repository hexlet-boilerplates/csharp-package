.DEFAULT_GOAL := build-run

install:
	mise install
	dotnet restore src/App
	dotnet restore tests/App.Tests

build:
	dotnet build

setup: install
	dotnet publish src/App -c Release -o dist

clean:
	dotnet clean
	rm -rf dist

run:
	dotnet run --project src/App

run-dist:
	./dist/App

test:
	dotnet test tests/App.Tests

test-coverage:
	dotnet test tests/App.Tests --collect:"XPlat Code Coverage"

lint:
	csharpier check .
	dotnet format --verify-no-changes

lint-fix:
	csharpier format .
	dotnet format

# Показывает устаревшие зависимости; ключ -u поднимает версии в csproj.
update-deps:
	dotnet-outdated

build-run: build run

.PHONY: build test
