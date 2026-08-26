.DEFAULT_GOAL := build-run

install:
	dotnet tool restore
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
	dotnet csharpier check .

lint-fix:
	dotnet csharpier format .

update-deps:
	dotnet list package --outdated

build-run: build run

.PHONY: build test
