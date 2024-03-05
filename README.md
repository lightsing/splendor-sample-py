# Splendor Python Actor Template

This is your first step to create a Splendor actor in Python.

This template is a simple random actor that can be used as a starting point for your own actor.

## Project structure

- `pyproject.toml`: This is the poetry configuration file.
- `actor/`: This is where your actor code will live.
- `actor/__main__.py`: This is the entry point for your actor.
- `Dockefile`: This is the Dockerfile that will be used to build the actor image.
- `wait-for-service.sh`: This is a helper script that will wait for the game service to be available before starting the actor.
- `docker-compose.yml`: This is a docker-compose file that can be used to run and test your actor locally.

## Getting started

1. Make sure you have Python 3.11 or later installed as well as the poetry package manager.
2. Create a new repository from this template.
3. Clone the repository to your local machine.
4. Run `poetry install` to install the dependencies.

## Running the actor

1. Clone the https://github.com/lightsing/splendor repository.
2. modify the `docker-compose.yml` file, fill the repository path in the `build` section.
3. Run `docker-compose up` to start the game service and the actor.

This will run the game with 4 copies of your actor.
You can modify the `docker-compose.yml` file to change the number or the type of actors.