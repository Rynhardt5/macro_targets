# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :macro_targets,
  ecto_repos: [MacroTargets.Repo]

# Configures the endpoint
config :macro_targets, MacroTargets.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bHqzo+JzVCRI5XpdNPOwkxIXm8ZO2G3+od2zIINIfBy3ORDaWjt7v+1KMEmzWwR6",
  render_errors: [view: MacroTargets.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MacroTargets.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
