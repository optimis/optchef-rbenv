# rbenv-wrapper

Installs/Configures system wide ruby & gems using rbenv.

## Assumptions

- You use a single version of ruby system wide.

## Rationale

- A simple wrapper cookbook to wrap the boilerplate configuration for:
  - The ruby build upgrade strategy.
  - A system wide ruby version.
  - System wide gems (ohai, chef and bundler).
- The tests should include support for a docker environment.

## Usage

Include the default recipe in your wrapper/run list.

## Testing

- Clone from github.
- Run bundle install.
- Unit tests: `bundle exec rspec spec`.
- Integration tests: `kitchen test` (ensure you have the DOCKER_HOST variable set).
